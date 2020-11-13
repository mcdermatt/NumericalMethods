%          T  
%  pts = [300, 
%         350, %dT1 = 50
%         400, %dT2 = 50
%         500, %dT3 = 100
%         600, %dT4 = 100
%         700, %dT5 = 100
% 
%         P    
% pts = [0.6, 
%        0.8,  %dP1 = 0.2
%        1,    %dp2 = 0.2
%        1.4,  %dP3 = 0.4
%        1.8,  %dP4 = 0.4
%        2.5,  %dP5 = 0.7

%Error estimation:-------------------------------------------
% cubic spline has error of order H^4

% Max(dP) = 0.7 (see main.m for more detail)
% Max(dT) = 100

% Cubic spline has errors in the order of H^4, where H is the max 
% difference between two consecutive independant intervals. Since max dT is larger than 
% max dP, enthalpy found across T will get a larger error than enthalpy found across P
% So, the larger D is max(DT) and that is our error estimate
