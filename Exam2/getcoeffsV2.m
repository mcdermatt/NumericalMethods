function [ddh] = getcoeffsV2(pts)
% [ddh1, ddh2, ddh3, ddh4, ddh5, ddh6]

%Natural Spline Assumption:
ddh1 = 0
ddh6 = 0

%Ax = b 
A = zeros(4); %holds coeffs (ddh2, ddh3, ddh4, ddh5)
b = zeros(4,1) %holds vals

% i = 2
% 2(T3 - T1)*ddh2 + (T3-T2)*ddh3 = 6((h3 - h2)/(T3 - T2)) - 6((h2 - h1)/(T2 - T1))
A(1,1) = 2*(pts(3,1) - pts(1,1)); 
A(1,2) = pts(3,1) - pts(2,1);
b(1,1) = 6*(pts(3,2) - pts(2,2))/(pts(3,1)-pts(2,1)) - 6*(pts(2,2) - pts(1,2))/(pts(2,1)-pts(1,1))

% i = 3
% (T3 - T2)*ddh2 + 2*(T4 - T2)*ddh3 + (T4-T3)*ddh4 = 6((h4 - h3)/(T4 - T3)) - 6((h3 - h2)/(T3 - T2))
A(2,1) = (pts(3,1) - pts(2,1)); 
A(2,2) = 2*(pts(4,1) - pts(2,1));
A(2,3) = pts(4,1)- pts(3,1); 
b(2,1) = 6*(pts(4,2) - pts(3,2))/(pts(4,1)-pts(3,1)) - 6*(pts(3,2) - pts(2,2))/(pts(3,1)-pts(2,1))

% i = 4
% (T4 - T3)*ddh3 + 2*(T5 - T3)*ddh4 + (T5-T4)*ddh5 = 6((h5 - h4)/(T5 - T4)) - 6((h4 - h3)/(T4 - T3))
A(3,2) = (pts(4,1) - pts(3,1)); 
A(3,3) = 2*(pts(5,1) - pts(3,1));
A(3,4) = pts(5,1)- pts(4,1); 
b(3,1) = 6*(pts(5,2) - pts(4,2))/(pts(5,1)-pts(4,1)) - 6*(pts(4,2) - pts(3,2))/(pts(4,1)-pts(3,1))

%i = 5
% (T6 - T4)*ddh4 + 2*(T6 - T4)*ddh4 + (T6-T5)*ddh6 = 6((h6 - h5)/(T6 - T5)) - 6((h5 - h4)/(T5 - T4))
A(4,3) = (pts(5,1) - pts(4,1)); 
A(4,4) = 2*(pts(6,1) - pts(4,1));
% A(4,5) = pts(6,1)- pts(5,1); 
b(4,1) = 6*(pts(6,2) - pts(5,2))/(pts(6,1)-pts(5,1)) - 6*(pts(5,2) - pts(4,2))/(pts(5,1)-pts(4,1))

A
b

ddh = A \ b

end