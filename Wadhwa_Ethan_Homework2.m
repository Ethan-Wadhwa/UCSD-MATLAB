disp("problem 1")
%1.1
myend = randi([80,100])
veca = 1:5:myend
%1.2
myvec = (-2:.4:2).'

disp("problem 2")
%where vec is the matrix in question
vec = [1:10]
find(~mod(vec,2))

disp("problem 3")
%3.1
mata = randi([0,1],2,3)
matb = randi([0,50],2,3)
matc = randi([50,100],2,3)

%3.2
mat_A = randi([0,1],2,3)
numel(mat_A)

%3.3
mat_B = randi([10,20],3,4)
mat_B(1,:) = 1:4
mat_B(:,3) = randi([1,10],1,3)

disp("problem 4")
%4.1
clear
vec = [1:10]
vec(1,end) = 2
vec(1,length(vec)) = 7
vec(1,numel(vec)) = 21
vec(find(vec,1,'last'))

disp("problem 5")
%5.1
%function for calarea is as follows in a different script
%calarea
%a = input("enter the first side")
%b = input("enter the second side")
%c = input("enter the angle between them")
%area = a*b*sin(c)*.5
calarea

disp("problem 6")
%part 1
n = 1:99;
sum(1./(n.*(n+1)))