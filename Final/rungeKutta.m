function y = rungeKutta(x0, y0, x, h)
%solves for y given x using step size h and initial values x0 y0

n = int16(x - x0)/h;
y = y0;

for i = 1:(n+1)
    %apply rk formulas
    k1 = h * dydx(x0, y); 
    k2 = h * dydx(x0 + 0.5 * h, y + 0.5 * k1); 
    k3 = h * dydx(x0 + 0.5 * h, y + 0.5 * k2); 
    k4 = h * dydx(x0 + h, y + k3);
    %update y 
    y = y + (1.0 / 6.0)*(k1 + 2 * k2 + 2 * k3 + k4); 
    %update x
    x0 = x0 + h;
end

end