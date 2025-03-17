clear all;
close all;

%newton raphson method
%the function
syms x y;
f(x,y)= x^2 + y^2 + x*y-7;
g(x,y)=x^3 + y^3 -9;
F(x,y)=[f(x,y);g(x,y)];

disp("The systen of non-linear equations: ")
disp(F)

J(x,y) = jacobian(F(x,y),[x,y]);
J(x,y)=J^-1;

%starting point
X0=[0.5;1.5];
X1=[0;0];

%applying the recurrence relation
for i=1:6
    M = J(X0(1),X0(2))*F(X0(1),X0(2));
    X1=X0-M;
    X0=X1;
end
disp("The values of x and y respectively are: ")
disp(double(X1))

