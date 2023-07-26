%%Homework 6

clear all;   % This clears all workspaces
close all;   % This closes all figures 
clc;         % This clears the command window
format long; 

name = 'Ethan Wadhwa';
id = 'A15778800';
hw_num = 6;

%Problem 1: 
%Use for loop or nested for loops to evaluate the following expressions. 
%Here,?denotes summation and ?denotes product.
%(a) Put the answer into p1a. Hint: The answer is approximately e2 ?1.
p1a = 0;
for n = 1:40
    p1a = p1a + ((2^n)/factorial(n));
end
p1a
%exp(2)-1

%(b) Put the answer to p1b. Hint: The answer is approximately 9/4.
p1b=0;
for m = 0:40
    for n=0:40
        p1b = p1b + 1/(3^(m+n));
    end
end
p1b
%9/4

%(c) Put the answer to p1c. Hint: The answer is approximately 27/16.
p1c=0;
for m = 0:40
    for n = 0:m
        p1c = p1c + 1/(3^(m+n));
    end
end
p1c
%27/16

%(d) Put the answer to p1d. Hint: The answer is approximately 1.
p1d=0;
for l = 1:40
    for m = 1:40
        for n = 1:40
            p1d = p1d + 1/((2^l)*(2^m)*(2^n));
        end
    end
end
p1d

%(e)Put the answer to p1e.
p1e = 0;
for l = 1:5
    for m = 1:5
        for n = 1:5
            p1e = p1e+1;
        end
    end
end
p1e

%(f) Put the answer to p1f. Hint: The answer is approximately ?/2.
p1f = 1;
for n = 1:1000
    p1f = p1f * ( (4*(n^2))/(4*(n^2)-1) );
end
p1f
%pi/2


%Problem 2:
%In the following inequality equations, n is a positive integer. Use while loop
%to find the smallest value of n that satisfies the equations.
%(a) e/(n + 1)! ?10?7
%Put the answer into p2a.
 for n = 1:1000
     val = exp(1)/factorial(n+1);
     if val <= 10^(-7)
         p2a = n
         break
     end
 end

%(b) 2n+1(n + 1) ?107 Put the answer into p2b.
for n = 1:1000
     val = (2^(n+1))*(n+1);
     if val >= 107
         p2b = n
         break
     end
end

 
%Probelm 3:
%A ball is released from a 10 m high roof and bounces three quarters as high
%on each successive bounce. After traveling a total of 59.99 m (up and down motion), how
%many times did the ball bounce? Put the answer in p3a. What is the height of the most
%recent bounce? Put the answer in p3b. Use while loop.
n = 0;  %n is number of bounces
h = 10;   % height is height of each bounce
d = 0;   %d is total distance ball has travelled
while d < 59.99
    n = n + 1;
    h = h*3/4;
    d = d + h*2;
end
p3a = n
p3b = h


%Problem 4: 
%MATLAB treats a string as a vector of characters. For example, if stringA
%= 'Test', then stringA(1) = 'T', stringA(end) = 't'and length(stringA) = 4. In this exer-
%cise, you will use for loops and switch statements to examine a string. Download the file
%stringA.mat from CANVAS and load it into MATLAB. The file contains a string named
%stringA.

%(a - c) How many times do the substrings 'how', 'are', and 'for'appear in stringA?
%Put the answers into p4a, p4b, and p4c, respectively.

%(d - f) How many times do the substrings 'many', 'time', and 'loop'appear in stringA?
%Put the answers into p4d, p4e, and p4f, respectively.
load('stringA.mat')
p4a=0;
p4b=0;
p4c=0;
for i = 1:(length(stringA)-2)
    str = append(stringA(i), stringA(i+1), stringA(i+2));
    switch str
        case 'how'
            p4a = p4a+1;
        case 'are'
            p4b = p4b+1;
        case 'for'
            p4c = p4c + 1;
    end
end
p4a
p4b
p4c
%using count to check my answers
%count(stringA,'how')  
%count(stringA,'are')
%count(stringA,'for')


%(d - f) How many times do the substrings 'many', 'time', and 'loop'appear in stringA?
%Put the answers into p4d, p4e, and p4f, respectively.
p4d=0;
p4e=0;
p4f=0;
for i = 1:(length(stringA)-3)
    str = append(stringA(i), stringA(i+1), stringA(i+2), stringA(i+3));
    switch str
        case 'many'
            p4d = p4d+1;
        case 'time'
            p4e = p4e+1;
        case 'loop'
            p4f = p4f + 1;
    end
end
p4d
p4e
p4f
%using count to check my answers
%count(stringA,'many')  
%count(stringA,'time')
%count(stringA,'loop')


%Problem 5:
%(a, b) The following series can be used to approximate the value of ?:
%where k is a positive integer. As k increases, the approximate value of ? converges toward
%the true value. Find the smallest value of k such that the absolute error is less than 10?5.
%Here, the absolute error is defined as the absolute difference between the approximate value
%and the MATLAB built-in value (i.e. pi). Put the approximate value of ? in p5a and the
%value of k used to get the approximation in p5b.

%code takes a while to run be warned
for k = 75000:125000
    piapprox=0;
    for n = 0:k
        piapprox = piapprox + 4*( ((-1)^n)/(2*n + 1) );
    end
    if abs(pi-(piapprox)) <= (10^(-5))
        p5a = piapprox
        p5b = k
        break
    end
end

%(c, d) Repeat parts (a, b) with the following expression for ?:
%Put the approximate value of ? in p5c and the value of k used to get the approximation in
%p5d.

for k = 1:1000
    piapprox=0;
    for n = 0:k
        piapprox = piapprox + sqrt(12)*( ((-3)^(-n))/(2*n + 1) );
    end
    abs(piapprox-pi)
    if abs(pi-(piapprox)) <= (10^(-5))
        p5c = piapprox
        p5d = k
        break
    end
end
