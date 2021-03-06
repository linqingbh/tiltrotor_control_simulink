function J = xfl_J_B(Th1,Th2,Th3,Th4)
%XFL_J_B
%    J = XFL_J_B(TH1,TH2,TH3,TH4)

%    This function was generated by the Symbolic Math Toolbox version 6.3.
%    15-Jan-2019 21:41:31

t2 = sqrt(2.0);
t3 = sin(Th1);
t4 = sin(Th2);
t5 = t2.*t4.*5.65e-6;
t6 = sin(Th3);
t7 = t2.*t6.*5.65e-6;
t8 = sin(Th4);
t9 = cos(Th1);
t10 = cos(Th2);
t11 = cos(Th3);
t12 = cos(Th4);
t13 = t2.*t10.*1.4125e-6;
t14 = t13-t2.*t4.*7.5e-7;
t15 = t2.*t11.*1.4125e-6;
t16 = t2.*t6.*7.5e-7;
t17 = t2.*t8.*7.5e-7;
t18 = t17-t2.*t12.*1.4125e-6;
J = reshape([t2.*t3.*(-5.65e-6),t2.*t3.*5.65e-6,t9.*(-1.13e-5),t2.*t3.*(-7.5e-7)-t2.*t9.*1.4125e-6,t2.*t3.*7.5e-7+t2.*t9.*1.4125e-6,t3.*2.825e-6-t9.*1.5e-6,t5,t5,t10.*1.13e-5,t14,t14,t4.*(-2.825e-6)-t10.*1.5e-6,t7,-t7,t11.*(-1.13e-5),t15+t16,-t15-t16,t6.*2.825e-6-t11.*1.5e-6,t2.*t8.*(-5.65e-6),t2.*t8.*(-5.65e-6),t12.*1.13e-5,t18,t18,t8.*(-2.825e-6)-t12.*1.5e-6],[6,4]);
