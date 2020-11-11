    %   Five data points (y,x) are provided below. 

    %   Find coefficients C and A for an exponential fit y = Ce^(Ax)

    %   Linear equation for A, C can be solved by Cramer rule. 

    %   Plot the exponential prediction vs. data points.


x = [0,1,2,3,4];
y = [1.5, 2.5,3.5,7.5];

% y = a*e^(b*x)
Y = log(y);
A = log(a);
B = b;

%Y = A + Bx
