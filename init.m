addpath(genpath(pwd))
clear
clc
close all
 
%% X
qc.l = 0.25;  
qc.rays =  [1;1;0;
          -1;1;0;
           -1;-1;0
           1;-1;0];

for i = 1:4
    qc.rays(3*i-2:3*i) = qc.l*qc.rays(3*i-2:3*i)/norm(qc.rays(3*i-2:3*i));
end
qc.rot_dirs = [1;-1;1;-1];

%% dyn
qc.g = [0;0;-9.81]*1;
qc.m = 3.6;
qc.I_B =  [0.0348 0 0
          0 0.0420 0
          0 0 0.0685];
      
qc.I_P = 1*[8.450 0 0
          0 8.450 0
          0 0 4.580]*1e-5;
      
%% aerodyn
qc.k = 1.13e-5;
qc.b = 3*1e-6;
qc.S = 40*30*1e-4;
qc.c = 1.05;
qc.ro = 1;

%% generate
jacobian(qc.rays, qc.rot_dirs, qc.k, qc.b, qc.l);

%% constraints
qc.tw = 1.99;
qc.Th_lim = pi/3;
qc.Th_dot_lim = 6;
qc.Th_ddot_lim = 400; % not used
qc.W_lim = qc.tw*abs(qc.m*qc.g(3))/(4*qc.k);
qc.w_dot_lim = 0.5 * qc.b*qc.W_lim / qc.I_P(3,3);
qc.vertical_acc_max = min(5, (qc.tw-1.15)*abs(qc.g(3))); % at least 15% for horizontal thrust
qc.vertical_acc_min = -qc.vertical_acc_max;

%% error lims
qc.r_error_lim = inf;
qc.rdot_error_lim = inf;
qc.r2dot_error_lim = inf;
qc.omega_error_lim = inf;
qc.omegadot_error_lim = inf;

%% des lim
qc.rdot_des_lim = 20;
qc.r2dot_des_lim = 1*qc.tw*abs(qc.g(3))/qc.m;
qc.w_des_lim = 3*pi;

%% init pose
qc.r0 = 1*[-1.5;0.05;0];
qc.v0 = 1*[0;-2;0];
alpha = 1*pi/2;
pin = [0;0;-1];
qc.qBI0 = [cos(alpha/2);pin*sin(alpha/2)];
qc.omegaB0 = 0*[1;0;1]*2*pi;
wg = abs(qc.m*qc.g(3))/(4*qc.k);
qc.W0 = 1*qc.rot_dirs*wg;
th = 0;
qc.Th0 = 0*[th;th;-th;-th]*pi/180;

%% other
qc.time_step = 10*(1e-3);
% qc.control_tick = 0.005;
qc.draw_mode = 1;
qc.draw_tick = 0.1;

% %% motors
% R = 58e-3;
% L = 1.5e-3;
% KV = 830; % T-Motor MT2820 830kV
% KT = 60/(2*pi*KV);
% KE = 0.0605 * KT;
% Y = qc.I_P(3,3);
% tm = 0.004*Y*R/(KE*KT);
% te = L/(0.004*R);

%% transfer cooefs
qc.Th_transfer_top = [0.4 6];
qc.Th_transfer_bot = [0.06 1 6];

qc.W_transfer_top = [0.4 6]; % not used
qc.W_transfer_bot = [0.005 0.5 6]; % not used