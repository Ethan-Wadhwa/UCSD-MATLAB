%matlabhw3
%3.1
%a)
inv([1 1;100 100])

%b)
A=[4 9; 5 11];
B=inv(A);
A*B
B*A

%c)
x=[5;10];
y=A*x
%e)
h=B*x

%d)
clear all;
A=[0 1 0 0 0 0; 1 0 1 1 1 1; 0 1 0 1 1 0; 1 1 1 0 1 0; 0 0 1 1 0 1; 0 1 0 1 1 0];
A^5


% 3.4
clear all;
%a)
P = [0.8100 0.0800 0.1600 0.1000;
0.0900 0.8400 0.0500 0.0800;
0.0600 0.0400 0.7400 0.0400;
0.0400 0.0400 0.0500 0.7800];
x0 = [0.5106; 0.4720; 0.0075; 0.0099];



x0.^30

x0.^60

x0.^100