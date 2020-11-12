function [x] = gaussseidel(A,b)
x=[0 0 0 0]'
n=size(x,1);
normVal=Inf;
runLen =10;
tol=1e-5; itr=0;
count = 0;
while count < runLen
    x_last=x;
    for i=1:n
        
        sigma=0;
        
        for j=1:i-1
                sigma=sigma+A(i,j)*x(j);
        end
        
        for j=i+1:n
                sigma=sigma+A(i,j)*x_last(j);
        end
        
        x(i)=(1/A(i,i))*(b(i)-sigma);
    end
    
    itr=itr+1;
    normVal=norm(x_last-x);
    count = count + 1
end