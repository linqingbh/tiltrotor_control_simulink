%%
clc
close all

path = '\img\';
save = 1;

%%
t = time.Data;

r_m = r_mes.Data;
r_f = r_filtered.Data;
r_r = r_real.Data;

eul_f = eul_filtered.Data;
eul_m =eul_mes.Data;
eul_r =eul_real.Data;

r_fr = r_f - r_r;
r_mr = r_m - r_r;

%%
w = 1;
s = 8;
xlshift = [0.5, 0.2];
ylshift = [0.065, 0.85];

r2 = [0.5 0 0];
g2  = [0 0.5 0];
b2 = [0 1 1];


%% roll filtered vs noise
subplot(3,1,1);
hold on
grid on;
plot(t, eul_m(:,3)-eul_r(:,3),'Color','r','LineWidth',w, 'linestyle', '-');
plot(t, eul_f(:,3)-eul_r(:,3),'Color', r2,'LineWidth',w, 'linestyle', '-');
set(gca,'FontSize',s)
leg = legend('roll noise', 'roll filtered', 'Location','southeast');
set(leg,'FontSize',s);
xlabel('time, s');
ylabel('angle, rad');
ylim([-0.6, 0.6]);

%% pitch filtered vs noise
subplot(3,1,2);
hold on
grid on;
plot(t, eul_m(:,2)-eul_r(:,2),'Color','g','LineWidth',w, 'linestyle', '-');
plot(t, eul_f(:,2)-eul_r(:,2),'Color',g2,'LineWidth',w, 'linestyle', '-');
set(gca,'FontSize',s)
leg = legend('pitch noise', 'pitch filtered', 'Location','southeast');
set(leg,'FontSize',s);
xlabel('time, s');
ylabel('angle, rad');
ylim([-0.6, 0.6]);

%% yaw filtered vs noise
subplot(3,1,3);
hold on
grid on;
plot(t, eul_m(:,1)-eul_r(:,1),'Color','b','LineWidth',w, 'linestyle', '-');
plot(t, eul_f(:,1)-eul_r(:,1),'Color',b2,'LineWidth',w, 'linestyle', '-');
set(gca,'FontSize',s)
leg = legend('pitch noise', 'pitch filtered', 'Location','southeast');
set(leg,'FontSize',s);
xlabel('time, s');
ylabel('angle, rad');
ylim([-0.6, 0.6]);

set(gcf, 'PaperUnits', 'p', 'PaperPosition', [0 0 200 300]);
if save
    saveas(gcf, [pwd path 'eulNoiseVsFilter.png']);
end

rlim = 0.5
%% x filtered vs noise 
figure
subplot(3,1,1);
hold on
grid on;
plot(t, r_m(:,1)-r_r(:,1),'Color','r','LineWidth',w, 'linestyle', '-');
plot(t, r_f(:,1)-r_r(:,1),'Color',r2,'LineWidth',w, 'linestyle', '-');
set(gca,'FontSize',s)

leg = legend('x noise', 'x filtered', 'Location','southeast');
set(leg,'FontSize',s);
set(leg,'FontSize',s);
rect = [0.7, 0.87, .1, .1];
set(leg, 'Position', rect)
legend boxoff

xl = xlabel('t, s');
yl = ylabel('x, m');
set(xl, 'Units', 'Normalized', 'Position', [xlshift(1), xlshift(2), 0]);
set(yl, 'Units', 'Normalized', 'Position', [ylshift(1), ylshift(2), 0]);
ylim([-rlim, rlim]);

%% y filtered vs noise 
subplot(3,1,2);
hold on
grid on;
plot(t, r_m(:,2)-r_r(:,2),'Color','g','LineWidth',w, 'linestyle', '-');
plot(t, r_f(:,2)-r_r(:,2),'Color',g2,'LineWidth',w, 'linestyle', '-');
set(gca,'FontSize',s)

leg = legend('y noise', 'y filtered', 'Location','southeast');
set(leg,'FontSize',s);
set(leg,'FontSize',s);
rect = [0.7, 0.57, .1, .1];
set(leg, 'Position', rect)
legend boxoff

xl = xlabel('t, s');
yl = ylabel('y, m');
set(xl, 'Units', 'Normalized', 'Position', [xlshift(1), xlshift(2), 0]);
set(yl, 'Units', 'Normalized', 'Position', [ylshift(1), ylshift(2), 0]);
ylim([-rlim, rlim]);

%% z filtered vs noise 
subplot(3,1,3);
hold on
grid on;
plot(t, r_m(:,3)-r_r(:,3),'Color','b','LineWidth',w, 'linestyle', '-');
plot(t, r_f(:,3)-r_r(:,3),'Color',b2,'LineWidth',w, 'linestyle', '-');
set(gca,'FontSize',s)

leg = legend('z noise', 'z filtered', 'Location','southeast');
set(leg,'FontSize',s);
set(leg,'FontSize',s);
rect = [0.7, 0.27, .1, .1];
set(leg, 'Position', rect)
legend boxoff

xl = xlabel('t, s');
yl = ylabel('z, m');
set(xl, 'Units', 'Normalized', 'Position', [xlshift(1), xlshift(2), 0]);
set(yl, 'Units', 'Normalized', 'Position', [ylshift(1), ylshift(2), 0]);
ylim([-rlim, rlim]);

%%
set(gcf, 'PaperUnits', 'p', 'PaperPosition', [0 0 200 300]);
if save
    saveas(gcf, [pwd path 'rNoiseVsFilter.eps'], 'epsc');
end
