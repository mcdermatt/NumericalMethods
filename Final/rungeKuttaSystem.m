function RKOutput = rungeKuttaSystem(a, b, x, h)
%solves system of differential equations WITHIN INTERVAL [a,b]
% x = vector of initial conditions
% h = step size

m = size(x,1);
N = (b-a)/h; %number of points
t(1) = a;
w(:,1) = x; %set initial conds

for i = 1:N
   k1 = h*dydx(t(i), w(:,i));
   k2 = h*dydx(t(i)+h/2, w(:,i)+0.5*k1);
   k3 = h*dydx(t(i)+h/2, w(:,i)+0.5*k2); 
   k4 = h*dydx(t(i)+h, w(:,i)+k3);
   w(:,i+1) = w(:,i) + (k1 + 2*k2 + 2*k3 + k4)/6;
   t(i+1) = a + i*h;
end

% [t' w']
plot(t, w)
legend('y','y prime', 'y double prime')
xlabel('time')
ylabel('value')
title('RK Output')

% RKOutput = w(end);
RKOutput = w(2,end); %??
end