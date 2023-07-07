%Homework 7
disp('Problem 1')

disp('Problem 2')
syms x
x = linspace(0,1);
y1 = x.^2;
y2 = sqrt(x);
%final area calculation
a = sum(trapz(x,y2)-trapz(x,y1))

disp('Problem 3')
clear all
%Part 1
syms n x
limit((1-cos(x)/x.^2),x,0)
%Part 2
limit(((1+(1/n))^n),n,inf)
%Part 3
limit((sin(x)/(3.*x+x.^3)),x,0)
%Part 4
limit((-1+(1+x.^2)^(1/3))/(cos(x)-1),x,0)

disp('Problem 4')
clear all
mat=randi([-50,50],3,5);
value = 0;
for i=1:6
    if i==1
        value = min(min(mat));
        fprintf('The minimum of the matrix is equal to = %d', value)
    elseif i==2
        value=max(max(mat));
        fprintf('The maximum of the matrix is equal to = %d', value)
    elseif i==3
        value=sum(sum(mat));
        fprintf('The sum of the matrix is equal to = %d', value)
    elseif i==4
        value=prod(prod(mat));
        fprintf('The product of the matrix is equal to = %d', value)
    elseif i==5
        value=sum(sum(mat>0));
        fprintf('The sum of positive numbers in the matrix is equal to = %d', value)
    elseif i==6
        value=prod(prod(mat>0));
        fprintf('The product of positive numbers in the matrix is equal to = %d', value)
    end
end
bigger=[0 0 0]
disp('Problem 5')
fileID = fopen('Au25(1).txt', '%d')
for a:24;
    smaller=norm(fileID[a]-fileID[a+1])
    if smaller>bigger
        bigger=smaller
    end
end
fprintf('bigger', '%d')