function [a0, b0, c0, d0, a1, b1, c1, d1] = getcoeffs(pts)
% gets coefficients of cubic spline given three input points from form:
%      (x1,y1),
%      (x2,y2),
%      (x3,y3)

A = zeros(5); % Stores linear equations that will be solved for constants
%               each row: (b0, d0, b1, c1, d1)
B = zeros(5,1); 

% s0(x1) = a0 + b0(x - pts[1,1]) + c0(x - pts[1,1])**2 + d0(x - pts[0,0])**3
a0 = pts(1,2)
% s1(x2) = a1 + b1(x - pts[2,1]) + c1(x - pts[2,1])**2 + d1(x - pts[0,0])**3
a1 = pts(2,2)

% Natural Spline -> seccond order derivatives at endpoints == 0
% s0''(x0) = 0
% 2c0 + 6d0(x-x0) = 0
%2c0 = 0
c0 = 0

% s0(x2) = a0 + b0(x2 - x1) + c0(x2 - x1)**2 + d0(x2 - x1)**3
%------EQUATION 1:  (x2-x1)b0 + (x2-x1)**3*d0 = y2 - y1
A(1,1) = pts(2,1) - pts(1,1);
A(1,2) = (pts(2,1) - pts(1,1))^3;
B(1,1) = pts(2,2) - pts(1,2);

%s1(x3) = a1 + b1(x3 - x2) + c1(x3 - x2)**2 + d1(x3 - x2)**3
%-----EQUATION 2:   (x3 - x2)b1 +  (x3 - x2)**3*d1 = y3 - y2
A(2,3) = pts(3,1) - pts(2,1);      %b1
A(2,4) = (pts(3,1) - pts(2,1))^2; %c1
A(2,5) = (pts(3,1) - pts(2,1))^3; %d1
B(2,1) = pts(3,2) - pts(2,2);

% s0'(x2) = s1'(x2)
% b0 + 3d0(x2-x1)^2 = b1 + 2c1(x2-x2) + 3d1(x2-x2)^2 
%-----EQUATION 3: b0 + 3*d0*(x2 - x1) - b1 = 0
A(3,1) = 1; %b0
A(3,2) = 3*(pts(2,1) - pts(1,1)); %d0
A(3,3) = -1; %b1

% s0''(x2) = s1''(x2)
% 2c0 + 6d0(x2-x1) = 2c1 + 6d0(x2 - x2)
%-----EQUATION 4: (6*(x2-x1))*d0 - 2*c1 = 0
A(4,2) = 6*(pts(2,1) - pts(1,1));
A(4,4) = -2;


end


