%Numerical Methods Final
%Danielle Franco   Matt McDermott

%SOLVE:
% f''' + 0.5*f*f'' = 0

%NOTES ABOUT PROBLEM:
%Boundary Value Problem (8.4) - boundary conditions specified
%   mixed boundary conditions (combination of y'(x) and y(x)
%   https://www.geeksforgeeks.org/runge-kutta-4th-order-method-solve-differential-equation/

%Convert to first order differential equations
% x1 = y
% x2 = y'  = x1'
% x3 = y'' = x2'
% x3' = y''' = -0.5*x1*x2




iterations = 10; 
stepSize = 0.1; %h in RK

initialEstimate = 0.5; %f''(0)
x = [0 0 initialEstimate]; %initial conditions for RK
h = 0.01;
a = 0; %start here
b = 100; %end here

%yBar2 = f'(Inf) = 1
groundTruthBC = 1;
%y2^(n-1)
lastEstimatedBC = 0.5;
%y'|1^(n-1)
prevGuess = 0.1;
%y'|1^(n)
currentGuess = initialEstimate; 

for i = 1: iterations

    x(end) = currentGuess
    currentEstimatedBC = rungeKuttaSystem(a, b, x, h)
    
    slope = (currentEstimatedBC - lastEstimatedBC)/(currentGuess - prevGuess);
    %y'|1^(n+1)
    nextGuess = currentGuess + (groundTruthBC - currentEstimatedBC)/slope; 
    
    %update vals
    prevGuess = currentGuess;
    currentGuess = nextGuess;
    lastEstimatedBC = currentEstimatedBC;
end


