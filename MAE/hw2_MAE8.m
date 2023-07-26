%%Homework 2

clear all;   % This clears all workspaces
close all;   % This closes all figures 
clc;         % This clears the command window
format long; 

name = 'Ethan Wadhwa';
id = 'A15778800';
hw_num = 2;

%Problem 1: 
%a) Create a 5 x 5 matrix p1a with a value of 5 for every element.
p1a = 5.*ones(5,5) 
%b) Copy the matrix in part a into a new matrix p1b. Modify the matrix p1b such that
%all elements on the second column have a value of 0.
p1b = [p1a(:,1) zeros(5,1) p1a(:,3) p1a(:,4) p1a(:,5)]
%c) Transpose the matrix in part (b) and put the answer in p1c.
p1c = p1b.'  %transpose(p1b) works too
%d) Rotate the matrix in part (b) 90?counterclockwise 3 times and put the answer in p1d.
p1d = rot90(p1b)
%e) Are the matrices in part (c) and (d) the same? Put the answer in p1e. Do not use
%function isequal for this problem.
p1e = 25 == sum(sum(p1c == p1d))
            
%Problem 2:
%(a) Create the following matrix and put the answer in p2a. Do not input element by
%element. 
p2a = [
1 0 0 0 0 1 1 0 0 0 0 1;
0 2 0 0 2 0 0 2 0 0 2 0;
0 0 3 3 0 0 0 0 3 3 0 0;
0 0 4 4 0 0 0 0 4 4 0 0;
0 5 0 0 5 0 0 5 0 0 5 0;
6 0 0 0 0 6 6 0 0 0 0 6;
1 0 0 0 0 1 1 0 0 0 0 1;
0 2 0 0 2 0 0 2 0 0 2 0;
0 0 3 3 0 0 0 0 3 3 0 0;
0 0 4 4 0 0 0 0 4 4 0 0;
0 5 0 0 5 0 0 5 0 0 5 0;
6 0 0 0 0 6 6 0 0 0 0 6]
%(b) Extract the 4-by-4 submatrix on the upper left corner of the matrix and put the
%answer in p2b.
p2b = p2a(1:4,1:4)
%(c) Extract the 4-by-4 submatrix on the upper right corner of the matrix and put the
%answer in p2c.
p2c=p2a(1:4,9:12)
%(d) Extract the 4-by-4 submatrix on the lower right corner of the matrix and put the
%answer in p2d.
p2d=p2a(9:12,1:4)
%(e) Extract all the elements that are on the middle six rows and middle six columns into
%a 6-by-6 matrix p2e.
p2e=p2a(4:9,4:9)
%(f) Extract the first, third, fifth, seventh, eighth and last rows of the matrix and put
%them into a 6-by-12 matrix p2f.
p2f=[p2a(:,1) p2a(:,3) p2a(:,5) p2a(:,7) p2a(:,8) p2a(:,12)]
%(g) Extract the four elements at the four corners of the matrix and put them into a 2-by-2
%matrix p2g.
p2g = [p2a(1,1) p2a(1,12); p2a(12,1) p2a(12,12)]

%Problem 3:
%Let x = 1:10 and y = 10:10:100. Evaluate the following expressions using element-wise
%operations:
x = 1:10
y= 10:10:100
%(a) xy. Put the answer in p3a.
p3a = x.*y
%(b) x^log10(y). Put the answer in p3b.
p3b = x.^log10(y)
%(c) (sin(y^x))/(e^(y/x)). Put the answer in p3c.
p3c = sin(x.^y)/exp(y./x)

%(d) (x+e^?y^x)/ (y+ln(x^y)). Put the answer in p3d.
p3d = (x+exp(-1*y.^x))/ (y+log(x.^y))

%Problem 4:
%Find the sum of the first 100 terms of the following series:
% 1 + 1, 3 ? 1, 5 + 1, 7 ? 1, 9 + ...
%Put the answer in p4.
tmp = 2:1:101;
tmp1 = (-1).^tmp;
tmp2 = 1:2:200;
p4 = (tmp1+tmp2).'

%Problem 5:
A = [1 2 3; 4 5 6; 7 8 9];
B = [7 8; 9 10];
C = [1 3 11; 2 7 4];
D = [9 4; 8 5; 3 2]
%a) Compute A^2 and put the result in p5a.
p5a = A.^2  %A.*A also works
%b) Compute A ?B and put the result in p5b.
p5b = 'error' %A*B
%c) Compute A ?C and put the result in p5c.
p5c = 'error' %A*C
%d) Compute A ?D and put the result in p5d.
p5d = A*D
%e) Compute B ?A and put the result in p5e.
p5e = 'error' %B*A
%f) Compute D ?B and put the result in p5f.
p5f = D*B
%g) Compute B ?C and put the result in p5g.
p5g = B*C
%h) Compute C ?B and put the result in p5h.
p5h = 'error' %C*B
%i) Compute D^2 and put the result in p5i.
p5i = D.^2
%j) Is C ?D equal to D ?C ? Put the answer in p5j. The answer should be a logical, look
%up in MATLAB help isequal.
p5j = isequal(C*D,D*C)

%Problem 6: 
%Explore different ways to solve a linear system of equations by typing help
%inv and help \ in command window, and then perform the following exercises.
%a) Create a 3 x 3 matrix A with the following values and set p5a=A.
p6a = [9 8 7; 6 9 7; 1 7 4]
%b) Create a 3-element column vector b with values of 1, 3 and 5. Set p6b=b.
p6b = [ 1 3 5 ].'
%c) Using \ operator, solve the system of equations Ax=b for x. Set p6c=x.
p6c = p6a.\p6b
%d) Using function inv, solve the system of equations Ax=b for x. Set p6d=x.
p6d = p6b.*inv(p6a)
%e) Is the answer in part (c) and part (d) the same? Put the answer in p6e. Hint: Check
%by setting them equal.
p6e = 9 == sum(sum(p6d == p6c))
%f) Compute the difference between part (c) and (d) and put the answer in p6f.
p6f = p6c - p6d
