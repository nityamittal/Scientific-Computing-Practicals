%using ode45 function
clear all;
close all;

%the function, value of function, span of variable
odefun = @(t,y) -2*y + 2*sin(2*t);
y0 = -10:10; 
tspan = [-10 0];

%applying the function
[t,y] = ode45(odefun,tspan,y0);

%plotting the values
plot(t,y)
grid on
xlabel('t')
ylabel('y')
title('Solutions of y'' = -2y + 2sin(2t), y(0) = -10,-9,9,10','interpreter','latex')