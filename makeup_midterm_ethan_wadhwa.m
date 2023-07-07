% Makeup Midterm
clear all;   % This clears all workspaces
close all;   % This closes all figures 
clc;         % This clears the command window
format long; 

name = 'Ethan Wadhwa';
id = 'A15778800';
hw_num = 'Midterm';
form = 'C';


%Problem 1
%(a) Create vector p1a to store the numerator of the fractions in the series.
p1a=4*ones(1,100)

%(b) Create vector p1b to store the denominator of the fractions in the series.
p1b=linspace(1,199,100)

%(c) Use the answers in parts (a) and (b) to compute the series. Put the answer in p1c.
p1c = p1a./p1b


%Problem 2:
%Use \ operator to solve the system of equations for the five unknown x’s in the form Ax=b
%to obtain x. Set p2=x.
A = [1 1 0 0 0; 1 3 1 0 0; 0 1 3 1 0; 0 0 1 3 1; 0 0 0 1 3];
b = [1 2 3 4 5]';
x=A.\b;
p2=x

%Problem 3
%Make sure that you have filled in the form at the top of the midterm script (e.g., form =
%'C') before starting this problem. Create 2-dimensional matrix matA using the following
%commands: rng(int8(form)); matA = randi(60,10). Perform the following exercises
%with matA:
rng(int8(form)); 
matA = randi(60,10);

%(a) Find the product of the elements on the fourth column of matA. Put the answer in
%p3a.
p3a = prod(matA(:,4))

%(b) Find the average of the elements on the main diagonal of matA. The answer should
%be a single number. Put the answer in p3b.
p3b = sum(diag(matA))/length(diag(matA))

%(c) Find the sum of the elements that are even numbers in matA. Put the answer in
%p3c.
matAevensum = 0;
for i = 1:10
    for j = 1:10
        if matA(i,j)/2 == int8(matA(i,j)/2)
            matAevensum = matAevensum+matA(i,j);
        end
    end
end
p3c=matAevensum

%(d) Copy matA into p3d. Modify p3d by replacing the odd value(s) with 100.
p3d=matA;
for i = 1:10
    for j = 1:10
        if isequal( (p3d(i,j)/2), (int8(p3d(i,j)/2)) ) == 0
            p3d(i,j) = 100*p3d(i,j);
        end
    end
end
p3d
%(e) Write the last four elements on the fourth column in matA into string p3e. Use a
%field width of 5 characters and include 2 digits after the decimal place for each element. The
%string p3e must show a 5-element row vector. Do not fill in the leading empty space with
%zero.
p3e= sprintf('%3.2f ' , matA(7:10,4)')

%Problem 4:
%(a) Create a vector theta to include values
%from 1?to 360?with a consecutive difference of
%1?. Use the expressions above to obtain the val-
%ues for vectors x, y and z. Estimate the arc
%length of the three-dimensional curve. Approxi-
%mate the arc length with straight lines between
%consecutive points. Put the answer in p4a.
theta = linspace(1,360,360);
x = cosd(4*theta).*cosd(theta);
y = cosd(4*theta).*sind(theta);
z = cosd(8*theta);
deltay=[];
deltaz=[];
deltax=[];
for i = 2:length(theta)
    deltay=[deltay (y(i)-y(i-1))];
    deltax=[deltax (x(i)-y(i-1))];
    deltaz=[deltaz (z(i)-z(i-1))];
end
p4a=sum(sqrt(deltax.^2 + deltay.^2 + deltaz.^2))

%(b, c, d) Use forward finite difference method to approximate the derivatives dx/d?, dy/d?
%and dz/d?. Put the answers in p4b, p4c and p4d, respectively.
p4b = deltax
p4c = deltay
p4d = deltaz

%(e) Consider the function l(?):
%Use the derivatives in parts (b-d) to compute the values of l and put the answer in p4e.
l = sqrt(deltax.^2 + deltay.^2 + deltaz.^2);
p4e = l
%(f) Use trapezoidal method to evaluate the integral: ?360?1? l(?)d? and put the answer in
%p4f.
p4f = sum(l)
%(g) Compute the absolute difference between the answers in parts (a) and (f) and put
%the answer in p4g.
p4g = abs(p4a-p4f)
%(h) Reproduce figure 1 to plot the pattern. The figure must include the following items:
% Use magenta solid line to mark the curve.
% Use green solid circle marker to mark the tips of the petals.
% Remember to provide axis labels, title and legend.
% Put the figure in 3-dimensional view by setting view(45,60).
%Set p4h ='See figure 1'.
figure()
hold on
view(45,60)
plot3( x,y,z, 'Color', 'm')
for i = 1:360
    if z(i) >= max(z)-0.001
        plot3( x(i),y(i),z(i), 'Color', 'g', 'Marker', 'o', 'LineWidth', 5)
    end
end

xlabel('X')
ylabel('Y')
zlabel('Z')
title('Problem 4: 3-D parametric curve')
legend('Petal Curve', 'Petal tip')
p4h ='See figure 1'

