%%Homework 5

clear all;   % This clears all workspaces
close all;   % This closes all figures 
clc;         % This clears the command window
format long; 

name = 'Ethan Wadhwa';
id = 'A15778800';
hw_num = 5;

%%Problem 1:
%(a) Set p1a = evalc('help assign grade').
p1a = evalc('help assign_grade')

%(b, c) Set load('studentA.mat'); [p1b, p1c] = assign grade(homework, midterm,
%project, final).
load('studentA.mat'); 
[p1b, p1c] = assign_grade(homework, midterm, project, final)

%(d, e) Set load('studentB.mat'); [p1d, p1e] = assign grade(homework, midterm,
%project, final).
load('studentB.mat'); 
[p1d, p1e] = assign_grade(homework, midterm,project, final)

%(f, g) Set load('studentC.mat'); [p1f, p1g] = assign grade(homework, midterm,
%project, final).
load('studentC.mat'); 
[p1f, p1g] = assign_grade(homework, midterm, project, final)


%%Problem 2:
%(a) Set p2a=evalc('help days in month').
p2a=evalc('help days_in_month')

%(b) Set p2b=days in month('jan',0).
p2b=days_in_month('jan',0)

%(c) Set p2c=days in month('feb',0).
p2c=days_in_month('feb',0)

%(d) Set p2d=days in month('feb',1).
p2d=days_in_month('feb',1)

%(e) Set p2e=days in month('apr',0).
p2e=days_in_month('apr',0)

%(f) Set p2f=days in month('aug',1).
p2f=days_in_month('aug',1)

%(g) Set p2g=days in month('oct',0).
p2g=days_in_month('oct',0)

%(h) Set p2h=days in month('nov',1).
p2h=days_in_month('nov',1)

%(i) Set p2i=days in month('Dec',0).
p2i=days_in_month('Dec',0)


%%Problem 3:
%Italian mathematician Fibonacci is famous for introducing the 'Fibonacci series'
%to modern mathematics. Any term in the Fibonacci series is the sum of the previous two
%terms. For example, the first 5 terms of the series are
%1,1,2,3,5
%Use for loop to perform the following exercises.
%(a) Compute the first 50 terms of the series and put the answer in vector p3a.
fib = [0 1];
for i = 1:49
    fib = [fib (fib(i)+fib(i+1))];
end
fib = fib(fib>0);

p3a = fib
%look at the multiplier in the aswer, the numbers are not in decimals but
%rather in powers of 10^10

%(b) Use for loop to compute the sum of all terms in the series in part (a). Put the answer
%in p3b.
p3b = sum(p3a)

%(c) Find the ratio of two consecutive terms in the series in part (a) and put the answer
%in vector p3c. Hint: set p3c(1) = 0, p3c(2)=p3a(2)/p3a(1) and so on ...
p3c = [];
for i = 1:(length(fib)-1)
    p3c = [p3c (fib(i+1)/fib(i))];
end
p3c 


%%Problem 4:
%(a) Put the answer into p4a. Hint: The answer is approximately 2.
p4a = 0;
for i = 1:10
    p4a = sqrt(2+p4a);
end
p4a

%(b) Put the answer into p4b. Hint: The answer is approximately 1 + ?2.
p4b = 0;
for i = 1:10
    p4b = sqrt(1+2*p4b);
end
p4b

%(c) Put the answer into p4c. Hint: The answer is approximately (?5 ?1)/2.
p4c = 0;
for i = 1:10
    p4c = sqrt( 2 + ((-1)^(i-1))*p4c);
end
p4c


%%Problem 5:
%Download the file survey.m from CANVAS. The file includes the function survey which
%uses function menu to create a class survey. You are encouraged to explore how the function
%is constructed. Execute the function survey from the command window and take a short
%survey. Set Set p5 = evalc('type(''survey.dat'')') in the script. Do not execute the
%function inside your homework script. The function will generate a file named survey.dat
%which is to be included in your hw5.zip.
p5 = evalc('type(''survey.dat'')')
