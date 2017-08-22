clc
close all

path = '\img\';
save = 0;

%%
t = time.Data;

r_r= r_real.Data;
r_m= r_mes.Data;
r_f = r_filtered.Data;
r_d = r_des.Data;

eul_r = eul_real.Data;
eul_d = eul_des.Data;
eul_m = eul_mes.Data;
eul_f = eul_filtered.Data;


%%
w = 2;
s = 22;
r2 = [0.5 0 0];
g2  = [0 0.5 0];
b2 = [0 0.5 1];
gray = [0.7 0.7 0.7];


%% roll
subplot(3,1,1);
hold on
grid on;
plot(t, eul_m(:,3),'Color',gray,'LineWidth',w+3, 'linestyle', '-');
plot(t, eul_f(:,3),'Color','k','LineWidth',w-1, 'linestyle', '-');
plot(t, eul_r(:,3),'Color','r','LineWidth',w, 'linestyle', '-');
plot(t, eul_d(:,3),'Color',r2,'LineWidth',w-1, 'linestyle', '--');

set(gca,'FontSize',s)
leg = legend('roll mes', 'roll fltrd', 'roll real', 'roll des', 'Location','southeast');
set(leg,'FontSize',s);
xlabel('time, s');
ylabel('angle, rad');
% ylim([-pi-0.1, pi+0.1]);

%% pitch
subplot(3,1,2);
hold on
grid on;
plot(t, eul_m(:,2),'Color',gray,'LineWidth',w+3, 'linestyle', '-');
plot(t, eul_f(:,2),'Color','k','LineWidth',w-1, 'linestyle', '-');
plot(t, eul_r(:,2),'Color','g','LineWidth',w, 'linestyle', '-');
plot(t, eul_d(:,2),'Color',r2,'LineWidth',w-1, 'linestyle', '--');

set(gca,'FontSize',s)
leg = legend('pitch mes', 'pitch fltrd', 'pitch real', 'pitch des', 'Location','southeast');
set(leg,'FontSize',s);
xlabel('time, s');
ylabel('angle, rad');
% ylim([-pi-0.1, pi+0.1]);

%% yaw
subplot(3,1,3);
hold on
grid on;
plot(t, eul_m(:,1),'Color',gray,'LineWidth',w+3, 'linestyle', '-');
plot(t, eul_f(:,1),'Color','k','LineWidth',w-1, 'linestyle', '-');
plot(t, eul_r(:,1),'Color','b','LineWidth',w, 'linestyle', '-');
plot(t, eul_d(:,1),'Color',b2,'LineWidth',w-1, 'linestyle', '--');

set(gca,'FontSize',s)
leg = legend('yaw mes', 'yaw fltrd', 'yaw real', 'yaw des', 'Location','southeast');
set(leg,'FontSize',s);
xlabel('time, s');
ylabel('angle, rad');
% ylim([-pi-0.1, pi+0.1]);

set(gcf, 'PaperUnits', 'centimeters', 'PaperPosition', [0 0 60 20]);
if save
    saveas(gcf, [pwd path 'eul.png']);
end

figure
%% x
subplot(3,1,1);
hold on
grid on;
plot(t, r_m(:,1),'Color',gray,'LineWidth',w+3, 'linestyle', '-');
plot(t, r_f(:,1),'Color','k','LineWidth',w-1, 'linestyle', '-');
plot(t, r_r(:,1),'Color','r','LineWidth',w, 'linestyle', '-');
plot(t, r_d(:,1),'Color',r2,'LineWidth',w-1, 'linestyle', '--');

set(gca,'FontSize',s)
leg = legend('x mes', 'x fltrd', 'x real', 'x des', 'Location','southeast');
set(leg,'FontSize',s);
xlabel('time, s');
ylabel('x, m');
% ylim([-pi-0.1, pi+0.1]);

%% y
subplot(3,1,2);
hold on
grid on;
plot(t, r_m(:,2),'Color',gray,'LineWidth',w+3, 'linestyle', '-');
plot(t, r_f(:,2),'Color','k','LineWidth',w-1, 'linestyle', '-');
plot(t, r_r(:,2),'Color','g','LineWidth',w, 'linestyle', '-');
plot(t, r_d(:,2),'Color',g2,'LineWidth',w-1, 'linestyle', '--');

set(gca,'FontSize',s)
leg = legend('y mes', 'y fltrd', 'y real', 'y des', 'Location','southeast');
set(leg,'FontSize',s);
xlabel('time, s');
ylabel('y, m');
ylim([-1, 1]);

%% z
subplot(3,1,3);
hold on
grid on;
plot(t, r_m(:,3),'Color',gray,'LineWidth',w+3, 'linestyle', '-');
plot(t, r_f(:,3),'Color','k','LineWidth',w-1, 'linestyle', '-');
plot(t, r_r(:,3),'Color','b','LineWidth',w, 'linestyle', '-');
plot(t, r_d(:,3),'Color',b2,'LineWidth',w-1, 'linestyle', '--');

set(gca,'FontSize',s)
leg = legend('z mes', 'z fltrd', 'z real', 'z des', 'Location','southeast');
set(leg,'FontSize',s);
xlabel('time, s');
ylabel('z, m');
ylim([-1, 1]);