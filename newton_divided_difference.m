clear all;
close all;

%sample data set taken
X=[3,6,12,19,23,27];
Y=[7,11,30,40,47,60];
size=6;

disp("The values of x:")
disp(X)
disp("The values of f(x):")
disp(Y)

num= input("Enter the value of x: ");

%calculating nebula of the function
nebf = zeros(size, size);
nebf(:, 1) = Y';
for j = 2 : size
    for i = 1 : (size - j + 1)
        nebf(i,j) = (nebf(i + 1, j - 1) - nebf(i, j - 1)) / (X(i + j - 1) - X(i));
    end
end

%calculating the value of the function
sum=0;
for i=1:size
    multi=1;
    for j=1:i-1
        multi=multi*(num-X(j));      
    end
    sum=sum + multi*nebf(1,i);
end

fprintf("The value of f(x) : %f",sum)