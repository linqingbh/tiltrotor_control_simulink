function f = limitCondition6(f1,f3,t1,t3)
%LIMITCONDITION6
%    F = LIMITCONDITION6(F1,F3,T1,T3)

%    This function was generated by the Symbolic Math Toolbox version 6.3.
%    08-Nov-2018 15:54:24

f = -abs(f1.*1.5e-6+f3.*2.825e-6+t1.*1.13e-5)+abs(f1.*(-2.825e-6)+f3.*1.5e-6+t3.*1.13e-5)+sqrt(2.0).*8.3138959e-5;
