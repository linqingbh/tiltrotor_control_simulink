function f = limitCondition28(f1,f3,t1,t3)
%LIMITCONDITION28
%    F = LIMITCONDITION28(F1,F3,T1,T3)

%    This function was generated by the Symbolic Math Toolbox version 6.3.
%    08-Nov-2018 13:48:03

f = -abs(f1.*(1.0./4.0)-f3.*1.953318584070796+t1.*1.5e-6)+abs(f1.*1.953318584070796+f3.*(1.0./4.0)+t3.*1.5e-6)+sqrt(2.0).*pi.*1.953318584070796e-6;
