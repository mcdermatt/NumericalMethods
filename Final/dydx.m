% function out = dydx(x1,x2)
% out = -0.5*x1*x2;
% end

% TEST 2:
% y''' + 41y'' + 360y' + 900y = 600x' + 1200x;
% y(0)= 2 ; y'(0)= 1 ; y''(0) = -0.05
% function dy = dydx(t,y)
%        % make arbitrary anonymous (aka lambda) x function
%        x = @(t) exp(-t); %can set these to whatever- will not change results
%        dx = @(t) -exp(-t);
%     
%        dy = zeros(4,1);
%        dy(1) = y(2);
%        dy(2) = y(3);
%        dy(3) = y(4);
%        dy(4) = -41*y(3)-360*y(2)-900*y(1)+600*dx(t)+1200*x(t);
% end

%actual problem
function dy = dydx(t, y)
    %input y is vector
    dy = zeros(3,1);
    dy(1) = y(2);
    dy(2) = y(3);
    dy(3) = -0.5*y(1)*y(3);
end