function s2 = ellipsoidBoundaryOutside(a,b,c,x,y,z)
%ELLIPSOIDBOUNDARYOUTSIDE
%    S2 = ELLIPSOIDBOUNDARYOUTSIDE(A,B,C,X,Y,Z)

%    This function was generated by the Symbolic Math Toolbox version 6.3.
%    23-Aug-2017 16:36:40

t2 = a.^2;
t3 = b.^2;
t4 = c.^2;
t5 = z.^2;
t6 = t2.*t3.*t5;
t7 = y.^2;
t8 = t2.*t4.*t7;
t9 = x.^2;
t10 = t3.*t4.*t9;
t11 = t6+t8+t10;
t12 = 1.0./sqrt(t11);
t13 = a.*b.*c.*t12;
s2 = [t13;-t13];
