function out1 = W4(f1,f3,t1,t3)
%W4
%    OUT1 = W4(F1,F3,T1,T3)

%    This function was generated by the Symbolic Math Toolbox version 6.3.
%    29-Nov-2017 19:30:28

t4 = t1.*1.769911504424779e5;
t5 = f1.*3.335171328526687e15;
t6 = t3.*1.334068531410675e16;
t32 = f3.*1.770887431076117e15;
t7 = t5+t6-t32;
t8 = 1.0./t7;
t9 = f1.*4.424778761061947e4;
t10 = t3.*1.769911504424779e5;
t33 = f3.*2.349440050121388e4;
t11 = t9+t10-t33;
t12 = f1.*1.770887431076117e15;
t13 = f3.*3.335171328526687e15;
t14 = sqrt(2.0);
t15 = f1.*t3.*4.449347116250587e31;
t16 = f1.^2;
t17 = t16.*7.129705042084918e30;
t18 = f3.^2;
t19 = t18.*7.129705042084918e30;
t20 = t1.^2;
t21 = t20.*8.898694232501173e31;
t22 = t3.^2;
t23 = t22.*8.898694232501173e31;
t35 = f1.*t1.*2.362485194469338e31;
t36 = f3.*t1.*4.449347116250587e31;
t37 = f3.*t3.*2.362485194469338e31;
t24 = t15+t17+t19+t21+t23-t35-t36-t37;
t25 = sqrt(t24);
t26 = t14.*t25;
t34 = t1.*1.334068531410675e16;
t27 = t12+t13+t26-t34;
t28 = t8.*t11.*t27;
t30 = f1.*2.349440050121388e4;
t31 = f3.*4.424778761061947e4;
t29 = t4+t28-t30-t31;
t38 = t12+t13-t26-t34;
t39 = t8.*t11.*t38;
t40 = t4-t30-t31+t39;
out1 = [t29;t29;t40;t40];