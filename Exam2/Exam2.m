%   ES 101- Fall 2020
%   11-09-2020
%   Nov. 12th-10:00 pm Due
%   Group project - One-File per group with both names as comments on file
% muneeba.fakhrul@tufts.edu
% matthew.mcdermott@tufts.edu 

% Steam Table Data for enthalpy as functions of pressure and temeperature
%               h= h(T_i,P_j)
% or            h= h(i,j)

%   Utilize cubic spline to determine H(T=420, P=1.15 )
%   Cubic spline coded from your commands.  
%	Matlab can be used to check your final answer
%Submit your matlab file 
%Add comments on your error estimation based on Delta T and Delta P. 
%

% Temperatures % Pressures
T(1) = 300; P(1) = 0.60;
T(2) = 350; P(2) = 0.80;
T(3) = 400; P(3) = 1.00;
T(4) = 500; P(4) = 1.40;
T(5) = 600; P(5) = 1.80;
T(6) = 700; P(6) = 2.50;
% Enthaplies(0.60 MPa)% Enthalpies(0.80 MPa)
h(1,1) = 3061.6;h(1,2) = 3056.5;
h(2,1) = 3165.7; h(2,2) = 3161.7;
h(3,1) = 3270.3; h(3,2) = 3267.1;
h(4,1) = 3482.8; h(4,2) = 3480.6;
h(5,1) = 3700.9; h(5,2) = 3699.4;
h(6,1) = 3925.3; h(6,2) = 3924.2;
% Enthalpies(1.00 MPa) % Enthalpies(1.40 MPa)
h(1,3) = 3051.2; h(1,4) = 3040.4;
h(2,3) = 3157.7; h(2,4) = 3149.5;
h(3,3) = 3263.9; h(3,4) = 3257.5;
h(4,3) = 3478.5; h(4,4) = 3474.1;
h(5,3) = 3697.9; h(5,4) = 3694.8;
h(6,3) = 3923.1; h(6,4) = 3920.8;
% Enthalpies(1.80 MPa) % Enthalpies(2.50 MPa)
h(1,5) = 3029.2; h(1,6) = 3008.8;
h(2,5) = 3141.2; h(2,6) = 3126.3;
h(3,5) = 3250.9; h(3,6) = 3239.3;
h(4,5) = 3469.8; h(4,6) = 3462.1;
h(5,5) = 3691.7; h(5,6) = 3686.3;
h(6,5) = 3918.5; h(6,6) = 3914.5;

