% A = [2 1 ; 1 2];
% x = [1; 1];
% A=[1 1 -2;-1 2 1; 0 1 -1];
% x=[1 1 1];
% x = x';

A = [0 11 -5;
     -2 17 -7;
     -4 26 -10];
x = [4; 2; 1];

tic
[m, y_final] = power_method(A,x)
toc

%power method
function [m,y_final]=power_method(A,x)
m=0;
n=length(x);
y_final=x;
tol=1e-10; %// Change - make tolerance more small to ensure convergence
while(1)
     mold = m;
     y_old=y_final; %// Change - Save old eigenvector
     y_final=A*y_final;
     m=max(y_final);
     y_final=y_final/m;
     if abs(m-mold) < tol && norm(y_final-y_old,2) < tol %// Change - Check for both
         break;
     end
end
end
