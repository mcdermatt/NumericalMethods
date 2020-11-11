%% Gauss Seidel Method
%% Solution of x in Ax=b using Gauss Seidel Method
% * _*Initailize 'A' 'b' & intial guess 'x'*_
%%
A = [ 2 -1 0 0;
-1 2 -2 0;
0 -1 2 -1;
0 0 -1 2]
b = [5; 1; 0; 8]
x=[0 0 0 0]'
n=size(x,1);
normVal=Inf;
runLen =3;
%% 
% * _*Tolerence for method*_
tol=1e-5; itr=0;
%% Algorithm: Gauss Seidel Method
%%
count = 0;
while count < runLen
    x_old=x;
    
    for i=1:n
        
        sigma=0;
        
        for j=1:i-1
                sigma=sigma+A(i,j)*x(j);
        end
        
        for j=i+1:n
                sigma=sigma+A(i,j)*x_old(j);
        end
        
        x(i)=(1/A(i,i))*(b(i)-sigma);
    end
    
    itr=itr+1;
    normVal=norm(x_old-x);
    count = count + 1
end
%%
fprintf('Solution of the system is : \n%f\n%f\n%f\n%f in %d iterations',x,itr);