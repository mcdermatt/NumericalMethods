
% A = [1 2 ; 3 4];
A = [3 2 ; 1 -1];
% b = [2; 2];
b = [1; 3];
x0 = [0; 0];
% x0 = [1;1];
tolerance = 0.0001;

jacobi2(A,b,x0,tolerance)

function x1 = jacobi2(a,b,x0,tol)
n = length(b);
for j = 1 : n
     x(j) = ((b(j) - a(j,[1:j-1,j+1:n]) * x0([1:j-1,j+1:n])) / a(j,j)); % the first iteration
end
x1 = x';
k = 1;
while norm(x1-x0,1) > tol
    for j = 1 : n
     x_ny(j) = ((b(j) - a(j,[1:j-1,j+1:n]) * x1([1:j-1,j+1:n])) / a(j,j));
    end
    x0 = x1;
    x1 = x_ny';
    k = k + 1;
end
k
x = x1';
end