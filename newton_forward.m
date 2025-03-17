clear all;
close all;
%sample data set taken
x=[3,8,13,18,23,28];
y=[7,18,26,37,48,57];
size=6;

%finding out different degrees of del for the function
delf(1,:)=y(:);
for t = 2:size+1
    for i = 1:size-t+1
        delf(t,i)= delf(t-1,i+1)-delf(t-1,i);
    end
end

%let the number be 10
%standard h=10 and num= a + hu
num=10;
h=10;
pos=0;
%finding the valu
for k = 1:size
    if (num>=x(k)) && (num<x(k+1))
        a=x(k);
        pos=k;
    end
end

u=(num-a)/h;

%finding f(x)
sum=0;
for i = 1:size
    multi=1;
    if(i>1)
        for j = 0:i-2
            multi= multi*(u-j);
        end
    end
    sum = sum + (multi*delf(i,pos)/factorial(i-1));
end

disp("The value of f(x) for x= 10 using Newton's Forward Method")
disp(sum)


