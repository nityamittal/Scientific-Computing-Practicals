%bisection method
%the function
syms x
f(x) = x^2 - 6*x + 7;
disp("The function: ")
disp(f(x))

%limits (f(2) = -1,f(0) = 7)
a=0;
b=2;
error = 0.00001;

c=(a+b)/2;

while(abs(f(c))>error)
    if(f(c)*f(a)<0)
        b=c;
    else 
        a=c;
    end  
    c=(a+b)/2;
end

fprintf("The root of the given function: %f", c)
