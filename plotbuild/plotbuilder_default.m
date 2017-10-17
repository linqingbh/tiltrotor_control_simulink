clc
close all

path = '\img\';
save = 1;

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
w = 1;
xlshift = [0.5, 0.2];
ylshift = [0.065, 0.5];

r2 = [0.5 0 0];
g2  = [0 0.5 0];
b2 = [0 0.5 1];
gray = [0.7 0.7 0.7];

EULLIM = pi/2;
%% roll
subplot(3,1,1);
hold on
grid on;
plot(t, eul_r(:,3),'Color','r','LineWidth',w, 'linestyle', '-');
plot(t, eul_d(:,3),'Color',r2,'LineWidth',w, 'linestyle', '--');
set(gca,'FontSize',s)

leg = legend('roll real', 'roll des', 'Location','southeast');
set(leg,'FontSize',s);
set(leg,'FontSize',s);
rect = [0.7, 0.87, .1, .1];
set(leg, 'Position', rect)
legend boxoff

xl = xlabel('time, s');
yl = ylabel('angle, rad');
set(xl, 'Units', 'Normalized', 'Position', [xlshift(1), xlshift(2), 0]);
set(yl, 'Units', 'Normalized', 'Position', [ylshift(1), ylshift(2), 0]);

ylim([-EULLIM, EULLIM]);

%% pitch
subplot(3,1,2);
hold on
grid on;
plot(t, eul_r(:,2),'Color','g','LineWidth',w, 'linestyle', '-');
plot(t, eul_d(:,2),'Color',r2,'LineWidth',w, 'linestyle', '--');
set(gca,'FontSize',s)

leg = legend('pitch real', 'pitch des', 'Location','southeast');
set(leg,'FontSize',s);
rect = [0.7, 0.57, .1, .1];
set(leg, 'Position', rect)
legend boxoff

set(leg,'FontSize',s);
xl = xlabel('time, s');
yl = ylabel('angle, rad');
set(xl, 'Units', 'Normalized', 'Position', [xlshift(1), xlshift(2), 0]);
set(yl, 'Units', 'Normalized', 'Position', [ylshift(1), ylshift(2), 0]);

ylim([-EULLIM, EULLIM]);

%% yaw
subplot(3,1,3);
hold on
grid on;
plot(t, eul_r(:,1),'Color','b','LineWidth',w, 'linestyle', '-');
plot(t, eul_d(:,1),'Color',b2,'LineWidth',w, 'linestyle', '--');
set(gca,'FontSize',s)

leg = legend('yaw real', 'yaw des', 'Location','southeast');
set(leg,'FontSize',s);
rect = [0.7, 0.27, .1, .1];
set(leg, 'Position', rect)
legend boxoff

xl =xlabel('time, s');
yl = ylabel('angle, rad');
set(xl, 'Units', 'Normalized', 'Position', [xlshift(1), xlshift(2), 0]);
set(yl, 'Units', 'Normalized', 'Position', [ylshift(1), ylshift(2), 0]);

ylim([-EULLIM, EULLIM]);

%%
set(gcf, 'PaperUnits', 'p', 'PaperPosition', [0 0 200 300]);
if save
    saveas(gcf, [pwd path 'eul.eps'], 'epsc');
end

return
figure
%% x
subplot(3,1,1);
hold on
grid on;
plot(t, r_r(:,1),'Color','r','LineWidth',w, 'linestyle', '-');
plot(t, r_d(:,1),'Color',r2,'LineWidth',w-1, 'linestyle', '--');
set(gca,'FontSize',s)

leg = legend('x real', 'x des', 'Location','southeast');
set(leg,'FontSize',s);
leg = legend('roll error', 'Location','southeast');
set(leg,'FontSize',s);
set(leg,'FontSize',s);
rect = [0.75, 0.28, .1, .1];
set(leg, 'Position', rect)
legend boxoff

xlabel('time, s');
ylabel('x, m');
% ylim([-pi-0.1, pi+0.1]);

%% y
subplot(3,1,2);
hold on
grid on;
plot(t, r_r(:,2),'Color','g','LineWidth',w, 'linestyle', '-');
plot(t, r_d(:,2),'Color',g2,'LineWidth',w-1, 'linestyle', '--');
set(gca,'FontSize',s)

leg = legend('y real', 'y des', 'Location','southeast');
set(leg,'FontSize',s);
leg = legend('roll error', 'Location','southeast');
set(leg,'FontSize',s);
set(leg,'FontSize',s);
rect = [0.75, 0.58, .1, .1];
set(leg, 'Position', rect)
legend boxoff

xl = xlabel('time, s');
yl = ylabel('y, m');
% ylim([-1, 1]);

%% z
subplot(3,1,3);
hold on
grid on;
plot(t, r_r(:,3),'Color','b','LineWidth',w, 'linestyle', '-');
plot(t, r_d(:,3),'Color',b2,'LineWidth',w-1, 'linestyle', '--');
set(gca,'FontSize',s)
leg = legend('z real', 'z des', 'Location','southeast');
set(leg,'FontSize',s);
leg = legend('roll error', 'Location','southeast');
set(leg,'FontSize',s);
set(leg,'FontSize',s);
rect = [0.75, 0.28, .1, .1];
set(leg, 'Position', rect)
legend boxoff

xl = xlabel('time, s');
yl = ylabel('z, m');
% ylim([-1, 1]);

set(gcf, 'PaperUnits', 'p', 'PaperPosition', [0 0 200 180]);
if save
    saveas(gcf, [pwd path 'r.eps'], 'epsc');
end