%gauss seidel method
clear all;
close all;

%the function
%20x + y - 2z = 17
%3x + 20y - z = -18
%2x - 3y + 20z = 25
disp("The equations:")
disp("20x + y - 2z = 17")
disp("3x + 20y - z = -18")
disp("2x - 3y + 20z = 25")

%the matrix 
A=[20,1,-2;3,20,-1;2,-3,20];

%check variable initialized
check=1;

%checking for diagonally dominant matrix
for i=1:3
    sum=0;
    for j=1:3
        if(i~=j)
            sum=sum+abs(A(i,j));
        end
        if(abs(A(i,i))<sum)
            check=0;
            break;
        end
    end
end
%if matrix is diagonally dominant
if(check==1)
    disp("The matrix is diagonally dominant")
    %substitution for x y and z 
    syms x y z;
    fx(y,z)=(17 - y + 2*z)/20;
    fy(x,z)=(-18-3*x+z)/20;
    fz(x,y)=(25-2*x+3*y)/20;

    %initial values
    x0=0;
    y0=0;
    z0=0;
    
    %applying the iteration 6 times
    for i=1:6
        x1=fx(y0,z0); 
        y1=fy(x1,z0); 
        z1=fz(x1,y1);
        x0=x1;
        y0=y1;
        z0=z1;
    end

    %rounding of the numbers
    X=round([x1;y1;z1]);

    disp('The column matrix X=[x;y;z] ')
    disp(X)
    

else 
    disp("The matrix is not diagonally dominant")
end
    