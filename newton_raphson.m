clear all;
close all;

%newton raphson method
%the function
syms x;
f(x)= x*(exp(x)) - cos(x);
disp("The function: ")
disp(f(x))

%starting point : f(0)=-1, f(1)=e
x0=0;

df(x)=diff(f(x));

%applying the recurrence relation
while(df(x0)>0.01)
 x1=x0-(f(x0)/df(x0));
 fprintf('The root %f \n',x1);
 fprintf('Value of function %f\n\n', f(x1));
 x0=x1;
end
disp('Roots repeat after this.')