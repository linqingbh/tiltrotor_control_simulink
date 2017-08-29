addpath(genpath(pwd))
clear
clc
close all

%% sym
qc.time_step = 10*(1e-4);
qc.draw_on = 1;

%% config
qc.l = 0.25;

% %% plus
% qc.rays = [1;0;0;
%           0;1;0;
%           -1;0;0
%           0;-1;0];
          
% X
qc.rays =  [1;1;0;
          -1;1;0;
           -1;-1;0
           1;-1;0];

% % % K
% qc.rays = [1;1;0;
%           0;1;0;
%           0;-1;0
%           1;-1;0];
% % 
% % % random
% qc.rays = [1;2;0;
%           -2;1;0;
%           3;-1;0
%           -1;0;0];

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
qc.k = 10*1e-5;
qc.b = 3*1e-6;
qc.S = 40*30*1e-4;
qc.c = 1.05;
qc.ro = 1;

%% generate
jacobian(qc.rays, qc.rot_dirs, qc.k, qc.b, qc.l);
% generate_resolve_th(qc.rays, qc.rot_dirs, qc.k);

%% lims
%%T
wg = abs(qc.m*qc.g(3))/(4*qc.k);
qc.tw = 2;
qc.wmin = 0.5 * wg;
qc.wnorm = qc.tw * wg;

%% satur
qc.Th_lim = inf;
qc.W_lim = inf;

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

%% control lim
qc.r2dot_control_signal_lim = 1 * 9.81*qc.tw;
qc.wdot_control_signal_lim = inf;

%% init pose
qc.r0 = 0*[0;-0.5;0];
qc.v0 = 0*[0;0;0];
qBI0 = [1;0;0;0];
qc.qBI0 = qBI0/norm(qBI0);
qc.omegaB0 = 0*[1;0;1]*2*pi;
qc.W0 = 1*qc.rot_dirs*wg*1;
th = 0;
qc.Th0 = 0*[th;th;-th;-th]*pi/180;

%% other
qc.draw_tick = 0.1;
qc.control_delay = 1*6*qc.time_step;
qc.Wlim = qc.tw*abs(qc.m*qc.g(3))/(4*qc.k);

%% run
run('kalman_init');