%Test solution using bvp4c

%solves boundary value problem with 4th order method
%sol = bvp4c(ode, bc, solint, kwargs)
%           (diffeq, boundary condition, initial guess of soln, ...)

xmesh = linspace(0,pi,10);
init = bvpinit(xmesh,@initialGuess);
sol = bvp4c(@func, @bc, init)

plot(sol.x,sol.y,'-o')

%need to simplify 3rd order system down to first order to use as input
function dydt = func(t,y)
dydt = [y(3)
        0.5*y(2)
        0];
end

function res = bc(ya,yb)
res = [ya(1)
       ya(2)
       yb(1)];
end

function y = initialGuess(x)
y = [x
     x
     x];
end


%TEST STUFF ----------------------------------
%ODE:
% y' = 5y -3
function dydt = testFun1(t,y)
dydt = 5*y - 3;
end
%also works for systems of equations
function dzdt = testFun2(t,z)
dzdt = zeros(2,1);
dzdt(1) = z(1) + 2*z(2);
dzdt(2) = 3*z(1) + 2*z(2);
end

%bc - need same number as number of ODEs
function res = bcfun2(ya,yb)
res = [ya(1)-1
       yb(1)];
end

%solinit
function y = guess2(x)
y = [sin(x)
    cos(x)];
end
