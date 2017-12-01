function Jt = Jt_fcn_advanced(Th1,Th2,Th3,Th4,W01,W02,W03,W04)
%JT_FCN_ADVANCED
%    JT = JT_FCN_ADVANCED(TH1,TH2,TH3,TH4,W01,W02,W03,W04)

%    This function was generated by the Symbolic Math Toolbox version 6.3.
%    01-Dec-2017 16:33:14

t2 = sqrt(2.0);
t3 = sin(Th1);
t4 = sin(Th2);
t5 = sin(Th3);
t6 = sin(Th4);
t7 = cos(Th1);
t8 = t2.*t7.*1.4125e-6;
t9 = abs(W01);
t10 = 1.0./sqrt(t9);
t11 = cos(Th2);
t12 = abs(W02);
t13 = 1.0./sqrt(t12);
t14 = t2.*t4.*(-7.5e-7)-t2.*t11.*1.4125e-6-t2.*t4.*t13.*1.145e-3;
t15 = cos(Th3);
t16 = t2.*t5.*7.5e-7;
t17 = abs(W03);
t18 = 1.0./sqrt(t17);
t19 = t2.*t5.*t18.*1.145e-3;
t20 = cos(Th4);
t21 = t2.*t20.*1.4125e-6;
t22 = t2.*t6.*7.5e-7;
t23 = abs(W04);
t24 = 1.0./sqrt(t23);
t25 = t2.*t6.*t24.*1.145e-3;
t26 = t21+t22+t25;
Jt = reshape([t8-t2.*t3.*7.5e-7-t2.*t3.*t10.*1.145e-3,-t8+t2.*t3.*7.5e-7+t2.*t3.*t10.*1.145e-3,t3.*(-2.825e-6)-t7.*1.5e-6-t7.*t10.*2.29e-3,t14,t14,t4.*2.825e-6-t11.*1.5e-6-t11.*t13.*2.29e-3,t16+t19-t2.*t15.*1.4125e-6,-t16-t19+t2.*t15.*1.4125e-6,t5.*(-2.825e-6)-t15.*1.5e-6-t15.*t18.*2.29e-3,t26,t26,t6.*2.825e-6-t20.*1.5e-6-t20.*t24.*2.29e-3],[3,4]);