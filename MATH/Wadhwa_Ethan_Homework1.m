disp("Problem 1")
%Surface Area
r = 5;
h = 3;
SA = 2*pi*(r^2) + 2*pi*r*h 
%Volume
V = pi*h*(r^2) 

disp("Problem 2")
x1 = 3;
y1 = 4;
x2 = 5;
y2 = 9;
slope = (y2-y1)/(x2-x1)

disp("Problem 3")
dis = sqrt(((x2-x1)^2)+((y2-y1)^2))

disp("Problem 4")
x=2;
sine = (exp(x) - exp(-x))/2
check = sinh(x)

disp("Problem 5")
%Part 1
sin(pi/6)
cos(pi)
tan(pi/4)
%in degree notation
sind(30)
cosd(180)
tand(45)

%part 2
((sin(pi/6)^2)+(cos(pi/6)^2))
%degree notation
((sind(30)^2)+(cosd(30)^2))

%part 3
clear
x = 32 * pi;
y = (cosh(x)^2) - (sinh(x)^2)

disp("Problem 6")
format("long")
(exp(2)*sin(pi/6)) + (log(3)*cos(pi/9)) - 5^3