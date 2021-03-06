%Uncomment the first half of this file and comment out the seccond
% half to calculate first 6 splines

% %       T    h
%  pts = [300, 3061.6;
%        350, 3165.7; %dT1 = 50
%        400, 3270.3; %dT2 = 50
%        500, 3482.8; %dT3 = 100
%        600, 3700.9; %dT4 = 100
%        700, 3925.3];%dT5 = 100
% 
% goal = 420;
% 
% out = getcoeffsV2(pts);
% fprintf('h2" = %6.7f\n', out(1))
% fprintf('h3" = %6.7f\n', out(2))
% fprintf('h4" = %6.7f\n', out(3))
% fprintf('h5" = %6.7f\n', out(4))
% 
% %plug goal (420) into the equation of h3
% est = (out(2)/(6*(500-400)))*(500 - goal)^3 + (out(3)/(6*(500-400)))*(goal - 400)^3 ...
%        + (pts(3,2)/(500-400) - (out(2)*(500-400)/6))*(500 - goal) ... 
%        + (pts(4,2)/(500-400) - (out(3)*(500-400)/6))*(goal-400)
% 
% %enthalpy outputs of the points on the first 6 splines
% %P = 2.5 -> 3283.9354
% %P = 1.8 -> 3294.6003
% %P = 1.4 -> 3300.6407
% %P = 1   -> 3306.5162
% %P = 0.8 -> 3309.4614
% %P = 0.6 -> 3312.4145
%----------------------------------------------------------

%uncomment this out to calculate final answer using h values determined 
% using values from the first 6 splines

%       P    h
pts = [0.6, 3312.4145;
       0.8, 3309.4614; %dP1 = 0.2
       1,   3306.5162; %dp2 = 0.2
       1.4, 3300.6407; %dP3 = 0.4
       1.8, 3294.6003; %dP4 = 0.4
       2.5, 3283.9354];%dP5 = 0.7
goal = 1.15;

out = getcoeffsV2(pts)

est = (out(2)/(6*(1.4-1)))*(1.4 - goal)^3 + (out(3)/(6*(1.4-1)))*(goal - 1)^3 ...
       + (pts(3,2)/(1.4-1) - (out(2)*(1.4-1)/6))*(1.4 - goal) ... 
       + (pts(4,2)/(1.4-1) - (out(3)*(1.4-1)/6))*(goal-1)


