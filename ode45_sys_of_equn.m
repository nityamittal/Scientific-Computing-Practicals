clear all;
close all;

%function values and span
t0 =0;
tfinal = 20;
p0 = [30; 40];

%applying the function
[t,p] = ode45(@lotkaODE,[t0 tfinal],p0);

%plotting the graph
plot(t,p)
title(' Values of x and y over t')
xlabel('t')
ylabel('Values of x and y')
legend('x','y')

%the ode system of equations
function dpdt = lotkaODE(t,p)
% LOTKA Lotka-Volterra Equations
delta = 0.02;
beta = 0.01;
dpdt = [p(1) .* (1 - beta*p(2));p(2) .* (-1 + delta*p(1))];
end
