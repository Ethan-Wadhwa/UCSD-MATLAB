% Math 18 Matlab homework 1
% Ethan Wadhwa
% TA Yimeng Zhang
% Class D03 4pm

%1.1
%a) My quiz is on March 10th, a Tuesday
%b) 4pm
%c) APM B432
%d) Noon on the saturday of week 9, can't take alternate if missed
%e) No
%f)

%1.2
a=1; e=5; h=8; n=14; t=20;
ethan = e+t+h+a+n

%1.3
z = 25-(100-7*exp(5+cos(pi/3)))

%1.4
syms s t;
diff(log(cos(t)-3*s), t)
diff(log(cos(t)-3*s), s)

%1.5
asin(1)

%1.6
Fibonacci = [1 1 2 3; 5 8 13 21; 34 55 89 144; 233 377 610 987]

%1.7 
Fibonacci(3:4,2:3)

%1.8
A= rand(4)
B= rand(4)
A+B
B+A
