% Homework 5
disp("Problem 1")
%Part 1
syms f(x);
f(x)=((x+2)/sqrt(2*x+1))
int(f(x),x,0,4)
%part 2
syms y(x);
y(x)= (cos(x)^5*sin(x))
int(y(x),x,0,pi/2)
%part 3;
syms h(x);
h(x) = sqrt((sin(x)^3)-sin(x)^5)
int(h(x),x,0,pi)
%part 4
syms g(x);
g(x)=((x^2)/((x^2-3*x+3)^2))
int(g(x),x,0,3)

disp("Problem 2")
clear;
%finds roots of function
p=[3 -2 -5];
h=roots(p)
syms f(x);
f(x) = 3*x^2 -2*x -5
%plots a graph where y=f(x) and x=x over (-3,3)
ezplot(f(x), [-3 3])
%graph comes up as figure 1

disp("Problem 3")
syms y(t)
y(t) = (-15250/t)-1.255*log(t)+21.79
solve (y(t) == log(1), t)

disp("Problem 4")
syms c(a);
c(a)=50.79 + 1.97*(10^-3)*a - 4.92*(10^6)*(a.^-2) + 8.20*(10^8)*(a.^-3)
int(c(a),a, [298 1273])

disp("Problem 5")
clear
x=0:3:24;
y=[800 980 1090 1520 1920 1670 1440 1380 1300];
coefs=polyfit(x,y,4)
y1=polyval(coefs, x)
%graph comes up as figure 2
figure
hold on
plot(x,y,'o')
plot(x,y1, '-')
title('4th degree polynomials of data set')
xlabel('Time')
ylabel('Flow Rate')
hold off

disp("Problem 6")
s = load('Ag.txt');
trapz(s)

disp("Problem 7")
%part 1
clear
syms y(x);
Dy = diff(y)
dsolve(Dy-(2*y/(x+1))==(x+1)^(5/2))
%part 2
clear
syms y(x);
Dy = diff(y)
dsolve(Dy+y/x==(log(x))*y.^2)
%part3
clear
syms y(x);
Dy = diff(y)
D2y = diff(Dy)
dsolve((1+x^2)*D2y==2*x*Dy)