%%Homework 3

clear all;   % This clears all workspaces
close all;   % This closes all figures 
clc;         % This clears the command window
format long; 

name = 'Ethan Wadhwa';
id = 'A15778800';
hw_num = 3;

%Problem 1: 
%Consider the linear system of equations below:
% 5x_1 ?2x2 = ?2 ?2x10 + 5x11 ?2x12 = 0 ?2x20 + 5x21 ?2x22 = 0
% ?2x1 + 5x2 ?2x3 = 0 ?2x11 + 5x12 ?2x13 = 0 ?2x21 + 5x22 ?2x23 = 0
% ?2x2 + 5x3 ?2x4 = 0 ?2x12 + 5x13 ?2x14 = 0 ?2x22 + 5x23 ?2x24 = 0
% ?2x3 + 5x4 ?2x5 = 0 ?2x13 + 5x14 ?2x15 = 0 ?2x23 + 5x24 ?2x25 = 0
% ?2x4 + 5x5 ?2x6 = 0 ?2x14 + 5x15 ?2x16 = 0 ?2x24 + 5x25 ?2x26 = 0
% ?2x5 + 5x6 ?2x7 = 0 ?2x15 + 5x16 ?2x17 = 0 ?2x25 + 5x26 ?2x27 = 0
% ?2x6 + 5x7 ?2x8 = 0 ?2x16 + 5x17 ?2x18 = 0 ?2x26 + 5x27 ?2x28 = 0
% ?2x7 + 5x8 ?2x9 = 0 ?2x17 + 5x18 ?2x19 = 0 ?2x27 + 5x28 ?2x29 = 0
% ?2x8 + 5x9 ?2x10 = 0 ?2x18 + 5x19 ?2x20 = 0 ?2x28 + 5x29 ?2x30 = 0
% ?2x9 + 5x10 ?2x11 = 0 ?2x19 + 5x20 ?2x21 = 0 ?2x29 + 5x30 = 1
%Use blackslash (\) operator to solve the system of equations, Ax = b, for unknown
%x’s and put the answer in p1. The coefficient matrix A has a dimension of 30 rows by 30
%columns. All elements are zero except for those on the diagonal, subdiagonal and superdiag-
%onal. To create A, first create a 30 ×30 matrix with all zero and then modify the non-zero
%elements using linear indexing. Another method is to explore function diag.
b = [-2 zeros(1,28) 1].';
A = zeros(30,30);
v = -2*ones(1,29);
v2 = 5*ones(1,30);
A=A+diag(v,-1)+diag(v,1)+diag(v2);
x = b\A;
p1 = x.' %transposed for easier visualization

%Problem 2: 
%Use forward difference formula to estimate the derivative of the function f(x) =
%tanh^4(0.5x) e^?sin2(x) by performing the following tasks:
%(a) Create a vector x that has values from 0 to 10 with a step of 0.1 (in radians). 
%Set p2a=x.
x = linspace(0,10)*pi;
p2a = x

%(b) Compute f and put the answer in p2b.
f = (tanh(0.5*x).^4).*exp(-sin(x).^2);
p2b=f

%(c) Use function diff to estimate the derivative f’. Put the answer in p2c.
p2c = diff(f)

%(d) What is the value of f’ at x = 5? Put the answer in p2d.
p2d=p2c(50)

%Problem 3: 
%Use the trapezoid method discussed in class to estimate the following integral:?5
%?5 g(z) dz where g(z) = sech^2(z)sin^4(4z) by performing the following exercises.
%(a) Create a vector z that has values from -5 to 5 with a step of 0.1 (in radians). 
%Set p3a=z.
z = linspace(-5,5)*pi;
p3a=z
%(b) Compute g and set p3b=g.
g = (sech(z).^2).*(sin(4*z).^4);
p3b=g
%(c) Use function sum to approximate the integral. Put the answer in p3c.
p3c = sum(g)

%Problem 4: Create 2-dimensional matrix matA using the following commands: matA =
%1:100; matA = abs(fix(100*cos(matA))); matA = reshape(matA,10,10). Perform
%the following exercises with matA:
matA =1:100; matA = abs(fix(100*cos(matA))); matA = reshape(matA,10,10);

%a) Set p4a to be equal to matA. Use logical indexing to replace the maximum values of
%each column in matrix p4a with -1.
p4a= matA;
p4a(p4a == max(p4a)) = -1;
p4a
%b) Set p4b to be equal to matA. Use logical indexing to replace the maximum values of
%the entire matrix p4b with -2.
p4b = matA;
p4b(p4b == max(p4b)) = -2;
p4b
%c) Use function isprime to check whether any element in matA is a prime number. Put
%the answer in a logical number p4c.
p4c = isprime(matA)

%d) Identify the elements in matA that are the prime numbers. Use linear indexing to
%report the answer in a column vector p4d.
p4d = matA(isprime(matA))

%Problem 5: The built-in function clock returns a row vector that contains 6 elements: the
%first three are the current date (year, month, day) and the last three represent the current
%time in hours (24 hour clock), minutes, and seconds. The seconds is a real number, but all
%others are integers. Use function sprintf to accomplish the following formatting exercises.

%a) Get the current date and time and store them in p5a. The current date and time
%should be the date and time when your homework script is executed while being graded.
p5a=clock

%b) Using the format 'YYYY:MM:DD', write the current date to string p5b. Here, YYYY,
%MM, and DD correspond to 4-digit year, 2-digit month, and 2-digit day, respectively.
p5b=string(datetime('now'), "yyyy:MM:dd")

%c) Using the format 'HH:MM:SS.SSSS', write the current time to string p5c. Here, HH,
%MM, and SS.SSSS correspond to 2-digit hour, 2-digit minute and 7-character second (2 digits
%before the decimal point and 4 digits after the decimal points), respectively.
p5c=string(datetime('now'), "hh:mm:ss.SSSSS")

%d) Remove the last 5 characters from the string in part (c) so that the format is now
%'HH:MM:SS'. Put the answer into string p5d.
p5d=string(datetime('now'), "hh:mm:ss")

%e) Combine the strings in part (b) and part(d) together separated by a single space. Put
%the answer in string p5e.
p5e = p5b + " " + p5d


%Problem 6: Consider the following two-dimensional parametric curve:
%x = 16 sin3(?)
%y = 13 cos(?) ?5 cos(2?) ?2 cos(3?) ?cos(4?);
%for 1 ?? ?360?.

%(a) Create a vector theta to include values from 1 to 360 with a consecutive difference of
%1. Use the expressions above to obtain the values for vectors x and y. Create figure 1 and
%use function plot with the vectors x and y to plot the curve. The figure needs to include
%the following items:
%• Use red solid line with a line width of 5 to mark the curve.
%• Use solid cyan diamond symbol to mark the last data point on the curve. Use a marker
%size of 30 for the symbol.
%• Remember to provide axis labels, legend and figure title.
%Set p6a = 'See figure 1'.
theta= linspace(1,360,360);
x = 16.*(sin(theta).^3);
y = 13.*cos(theta) - 5.*cos(2.*theta) - 2.*cos(3.*theta) - cos(4.*theta);
figure()
hold on
plot(x,y,'LineWidth',5,'Color','r')
plot(x(360),y(360),'LineWidth', 30, 'Color', 'c', 'Marker','d' )
hold off

p6a = 'See figure 1'
%(b) Estimate the arc length of the curve. Approximate the arc length with straight lines
%between consecutive points. Put the answer in p6b.
deltay=[];
deltax=[];
for i = 2:length(theta)
    deltay=[deltay (y(i)-y(i-1))];
    deltax=[deltax (x(i)-y(i-1))];
end
p6b=sum(sqrt(deltax.^2 + deltay.^2))

%Problem 7: Consider the following three-dimensional parametric curve:
%x = [1 + 0.25 cos(50?)] cos(?)
%y = [1 + 0.25 cos(50?)] sin(?)
%z = ??/180 + 2sin(50?)
%for 0 ?? ?1200?.
%(a) Create a vector theta to include values from 0 to 1200 with a consecutive difference
%of 0.5. Use the expressions above to obtain the values for vectors x, y and z. Estimate the
%arc length of the three-dimensional curve. Approximate the arc length with straight lines
%between consecutive points. Put the answer in p7a.
%defining linspace
theta = linspace(0,1200,2400);
%defining variables
x = (1 + 0.25.*cos(50.*theta)).*cos(theta);
y = (1 + 0.25.*cos(50.*theta)).*sin(theta);
z = pi.*theta./180 + 2*sin(50.*theta);
%for loop filding difference between each consecutive points to find
%integral with right hand reimann sum estimation
deltay=[];
deltax=[];
deltaz=[];
for i = 2:length(theta)
    deltay=[deltay (y(i)-y(i-1))];
    deltax=[deltax (x(i)-x(i-1))];
    deltaz=[deltaz (z(i)-z(i-1))];
end

p7a=sum(sqrt(deltax.^2 + deltay.^2 +deltaz.^2))

%(b) Identify the data point at which the distance along the curve from the first data point
%is equal to 500. Put the location of the data point (x, y, and z coordinates) into a 3-element
%row vector p7b.
arclen=0;
for a = 1:length(deltax)
    arclen=arclen+sqrt(deltax(a)^2 + deltay(a)^2 +deltaz(a)^2);
    if arclen >= 500
        index = a;
        break
    end
end
p7b = [x(index) y(index) z(index)]

%(c) Create figure 2 and use function plot3 with the vectors x, y and z to plot the curve.
%The figure needs to include the following items:
%• Use magenta solid line with a line width of 0.5 to mark the curve.
%• Use solid black circle symbol to mark the first data point on the curve. Use a marker
%size of 10 for the symbol.
%• Use solid red triangle symbol to mark the last data point on the curve. Use a marker
%size of 10 for the symbol.
%• Use solid blue square symbol to mark the data point found in part (b). Also use a
%marker size of 10 for the symbol.
%• Remember to provide axis labels, legend and figure title.
%• Include view(3) to put the figure in three-dimensional view.
figure()
hold on
view(3)
plot3( x,y,z, 'Color', 'm','LineWidth',0.5)
plot3(x(1),y(1),z(1),'black','Marker','o','LineWidth',10)
plot3(x(end),y(end),z(end),'r','Marker','^','LineWidth',10)
plot3(x(index),y(index),z(index), 'b', 'Marker', 'square', 'LineWidth', 10)
title('Problem 7: 3-D parametric curve')
xlabel('X')
ylabel('Y')
zlabel('Z')
legend('Parametric curve','First Point','last Point', 'Indexed Point p7b')
hold off

p7c = 'See figure 2'