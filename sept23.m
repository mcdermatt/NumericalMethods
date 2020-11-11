%solve using Jacobi $ Gauss-Seidel to calculate x iteratively

% A = [1 2 ; 3 4];
% b = [2; 2];
% % x = [0; 0];
% x = jacobi(A, b, 1, 10);

n=input('Enter number of equations, n:  ');
 A = zeros(n,n+1);
 x1 = zeros(n);
 x2 = zeros(n);

 
 tol = input('Enter the tolerance, tol: ');
 m = input('Enter maximum number of iterations, m:  ');

%  A=[4 2 3 8; 3 -5 2 -14; -2 3 8 27];
%  x1=[0 0 0];

A = [1 2 2; 3 4 2];
x1 = [0; 0];

 k = 1;
 while k <= m
   err = 0;
   for i = 1 : n
      s = 0;
      for j = 1 : n
        s = s-A(i,j)*x1(j);
      end
      s = (s+A(i,n+1))/A(i,i);

 
      if abs(s) > err
        err = abs(s);
      end
      x2(i) = x1(i)+s;
  end


 
  if err <= tol
     break;
  else
     k = k+1;
     for i = 1 : n
       x1(i) = x2(i);
     end

 
  end
 end

 fprintf('Solution vector after %d iterations is :\n', k-1);
 for i = 1 : n
    fprintf(' %11.8f \n', x2(i));

 end


% function [x] = jacobi(A,b,tol,kmax)
% n = size(A,1);
% x = zeros(n,1);
% 
% for k = 1:kmax
%     for j = 1:n
%         
%         x(j,k+1) = (b(j)-A(j,[1:j-1,j+1:n])*x([1:j-1,j+1:n], k)) / A(j,j);
%     end
%     err = (norm(((x(:,k+1)-x(:,k))./x(:,k))))^2;
%     fprintf(' at %i iteration, the error is %12.10f \n', k, err)
%     
%     if err < tol
%         display('converged')
%         
%         return
%     end
% %     x
% end
% display('did not converge')
% x
% end

% function [ x] = jacobi( A,b,tol,kmax )
% %jacobi iterations
% %   
% n = size (A,1); % n has value equals no of row of A 
% x = zeros(n,1);   %same as x=zeros(size(b)) take initial zero vector
% 
% for i=1:kmax
% 
%     for j=1:n
% 
%         y(j)=(b(j)-A(j,1:j-1)*x(1:j-1)-A(j,j+1:n)*x(j+1:n))/A(j,j) %// since x is a row vector so k should not be there in indexing this is the correction required
% %                                                                       Also if you modify x then next time it will give different value so store value in different vector so that you x doesnot get affected
% 
%     end
% 
% %//error correction
%         break;
%     end
%     x=y'; % //here after breaking first loop we assing value to x
% %to change it completely 
% end
% Jacobi method

 