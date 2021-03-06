function generate_em_solution_MPMP(  k, b, l  )
syms f1 f2 f3 t1 t2 t3

w1 = -(2*b^4*f1^2 + 4*b^3*f1*k*t2 + 4*b^2*f1^2*k^2*l^2 - 2*2^(1/2)*b^2*f1*k^2*l*t3 + 2*b^2*k^2*t2^2 + 4*b*f1*k^3*l^2*t2 - 2*2^(1/2)*b*k^3*l*t2*t3 + 2*f1^2*k^4*l^4 - 2*2^(1/2)*f1*k^4*l^3*t3 + 2*k^4*l^2*t1^2 - 4*k^4*l^2*t1*t2 + 2*k^4*l^2*t2^2 + k^4*l^2*t3^2)^(1/2)/(2*k^2*l*(b^2 + k^2*l^2)^(1/2));
w4 = (2*b^4*f1^2 + 4*b^3*f1*k*t2 + 4*b^2*f1^2*k^2*l^2 + 2*2^(1/2)*b^2*f1*k^2*l*t3 + 2*b^2*k^2*t2^2 + 4*b*f1*k^3*l^2*t2 + 2*2^(1/2)*b*k^3*l*t2*t3 + 2*f1^2*k^4*l^4 + 2*2^(1/2)*f1*k^4*l^3*t3 + 2*k^4*l^2*t1^2 + 4*k^4*l^2*t1*t2 + 2*k^4*l^2*t2^2 + k^4*l^2*t3^2)^(1/2)/(2*k^2*l*(b^2 + k^2*l^2)^(1/2));
th1 = 2*atan((2*b^3*f1 - 2*k^3*l^2*t1 + 2*k^3*l^2*t2 + 2^(1/2)*(b^2 + k^2*l^2)^(1/2)*(2*b^4*f1^2 + 4*b^3*f1*k*t2 + 4*b^2*f1^2*k^2*l^2 - 2*2^(1/2)*b^2*f1*k^2*l*t3 + 2*b^2*k^2*t2^2 + 4*b*f1*k^3*l^2*t2 - 2*2^(1/2)*b*k^3*l*t2*t3 + 2*f1^2*k^4*l^4 - 2*2^(1/2)*f1*k^4*l^3*t3 + 2*k^4*l^2*t1^2 - 4*k^4*l^2*t1*t2 + 2*k^4*l^2*t2^2 + k^4*l^2*t3^2)^(1/2) + 2*b^2*k*t2 + 2*b*f1*k^2*l^2 - 2^(1/2)*b*k^2*l*t3)/(k*l*(2*f1*b^2 + 2*t1*b*k + 2*f1*k^2*l^2 - 2^(1/2)*t3*k^2*l)));
th4 = -2*atan((2*b^3*f1 + 2*k^3*l^2*t1 + 2*k^3*l^2*t2 + 2^(1/2)*(b^2 + k^2*l^2)^(1/2)*(2*b^4*f1^2 + 4*b^3*f1*k*t2 + 4*b^2*f1^2*k^2*l^2 + 2*2^(1/2)*b^2*f1*k^2*l*t3 + 2*b^2*k^2*t2^2 + 4*b*f1*k^3*l^2*t2 + 2*2^(1/2)*b*k^3*l*t2*t3 + 2*f1^2*k^4*l^4 + 2*2^(1/2)*f1*k^4*l^3*t3 + 2*k^4*l^2*t1^2 + 4*k^4*l^2*t1*t2 + 2*k^4*l^2*t2^2 + k^4*l^2*t3^2)^(1/2) + 2*b^2*k*t2 + 2*b*f1*k^2*l^2 + 2^(1/2)*b*k^2*l*t3)/(k*l*(2*f1*b^2 - 2*t1*b*k + 2*f1*k^2*l^2 + 2^(1/2)*t3*k^2*l)));

matlabFunction(w1, 'file', 'generated/em_solution_W1.m');
matlabFunction(w4, 'file', 'generated/em_solution_W4.m');
matlabFunction(th1, 'file', 'generated/em_solution_Th1.m');
matlabFunction(th4, 'file', 'generated/em_solution_Th4.m');
end

