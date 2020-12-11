%Numerical Methods Final
%Danielle Franco   Matt McDermott

%SOLVE:
% f''' + 0.5*f*f'' = 0

%NOTES ABOUT PROBLEM:
%Boundary Value Problem (8.4) - boundary conditions specified
%   mixed boundary conditions (combination of y'(x) and y(x)

%TEST
rungeKutta(0,1,1,0.2)

%Convert to first order differential equations
% x1 = y
% x2 = y'  = x1'
% x3 = y'' = x2'
% x3' = y''' = -0.5*x1*x2
