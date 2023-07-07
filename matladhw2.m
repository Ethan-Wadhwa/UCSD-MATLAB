%2.1
C=[2 1 5; 1 0 6; -6 2 4];
d=[-1;2;3];
x=C\d
C*x-d

%2.2
clear all;
C= [-10 4; 15 -6];
d=[0;0];
x=C\d
% the matrix C doesn't have a solution for 0,0

%2.3
C= [1 -3 2; -2 6 -4; 4 -12 8];
d=[0;0;0];
rref([C d])

%2.4
% Each person is taking a part of the whole amount of each product they are
% consuming.


%2.5
%The left hand side explains the composition fo each amount of the products
%that the indivuduals consume. The right hand coloumn is the total addition
%of all resources consumed by each person. 

%2.6
clear all;
C = [0.25 0.15 0.25 0.18 0.20;
0.15 0.28 0.18 0.17 0.05;
0.22 0.19 0.22 0.22 0.10;
0.20 0.15 0.20 0.28 0.15;
0.18 0.23 0.15 0.15 0.50];
I = eye(5);
d=[0;0;0;0;0];
%a)
rref([C-I d])
%b)
%according to the reduced echelon matrix formed by C-I, every person's
%gross income is the same, 40,000$. All have the same income. 

%2.7

