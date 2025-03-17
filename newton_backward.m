clear all;
close all;
%sample data set taken
x=[3,8,14,19,23,29];
y=[7,11,30,40,47,60];
size=6;

%let the number be 26
%standard h=10 and num= a + hu
num=26;
h=10;
pos=0;


%finding out different degrees of del for the function
delf(1,:)=y(:);
for t = 2:size+1
    for i = 1:size-t+1
        delf(t,i)= delf(t-1,i+1)-delf(t-1,i);
    end
end

%finding the value of a
for k = 2:size
    if (num>=x(k-1)) && (num<x(k))
        a=x(k);
        pos=k;
    end
end

%finding out different degrees of nebula for the function
nebf= zeros(size);

for i =1:size
    for j=1:size
        if (i+j==k+1)
            nebf(i)=delf(i,j);
        end
    end
end

u=(num-a)/h;

%finding f(x)
sum=0;
for i = 1:size
    multi=1;
    if(i>1)
        for j = 0:i-2
            multi= multi*(u+j);
        end
    end
    sum = sum + (multi*nebf(i)/factorial(i-1));
end

disp("The value of f(x) for x= 26 using Newton's Backward Method")
disp(sum)


