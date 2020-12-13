%test differential equations with ode45 solver

% TEST 2 - 3rd order ODE
% initialConds = [2 1 -0.05 0];
% [T, Y] = ode45(@dydx,[0,1],initialConds);
% plot(T, Y(:,1))


%TEST 3 - test actual problem with ode45
% initialConds = [0 0 1.0951];
initialConds = [0 0 0.3321]; %converges to 1 at around 0.3375
a = 0;
b = 10;
[T, Y] = ode45(@dydx,[a,b],initialConds);
% plot(T, Y(:,1))
% plot(T, Y(:,2))
plot(T,Y)
legend('y','y prime', 'y double prime')
xlabel('time')
ylabel('value')
title('ode45 Output')