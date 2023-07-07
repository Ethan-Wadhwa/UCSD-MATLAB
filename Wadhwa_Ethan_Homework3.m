disp("problem 1")
%part 1
a = 3:2:999;
b = 1:1:499;
c = sum(a./b)
%part 2
d = 1:99;
e = 2:100;
f = sum(d./e)
%part 3
n = 99
top = 2:2:(n-1);
bot = 1:2:n;
eq = (prod(top)^2)./(prod(bot)^2)

disp("problem 2")
%x is the number of elements in the vector vec
x = 11;
vec = randi([1,10],1,x)
y = ((length(vec)/2))+rem(length(vec),2)
halfone = vec(1:y)
halftwo = vec(y:x)

disp("problem 3")
%m is the matrix for this problem
m=randi([-100,100],3,5)
%1
max(m)
%2
max(m,[],2)
%3
min(min(4))
%4
max(max(m))
%5
sum(sum(m))
%6
prod(prod(m))
%7
sum(sum(m>0))
%8
sum(sum(m<0))
%9
sum(sum(m==0))
%10 
sum(sum(m(m>0)))
%11
sum(sum(m(m<0)))
%12
prod(prod(m(m<0)))
%13
prod(prod(m(m>0)))

disp("problem 4")
clear
%x+2y+3z=11
%-4x+y+2z=-3
%9y-8z=19
%the equations with x y z in coloums in that order
vars = [1 2 3; -4 1 2; 0 9 8]
%solutions to each equation
ans = [11; -3; 19]
mat = linsolve(vars,ans)
%final x y z values
x = mat(1)
y = mat(2)
z = mat(3)

disp("problem 5")
clear
% C-C = 1.39A
% C-H = 1.09A
cc=1.39
ch=1.09
carbonx = [cc; (cc*sqrt(3)/2); -(cc*sqrt(3)/2); -cc; -(cc*sqrt(3)/2); (cc*sqrt(3)/2)]
carbony = [0; (cc/2); (cc/2); 0; -(cc/2); -(cc/2)]
hydrox = [(cc+ch); ((cc+ch)*sqrt(3)/2); -((cc+ch)*sqrt(3)/2); -(cc+ch); -((cc+ch)*sqrt(3)/2); ((cc+ch)*sqrt(3)/2)]
hydroy = [0; ((cc+ch)/2); ((cc+ch)/2); 0; -((cc+ch)/2); -((cc+ch)/2)]
%final x y z values 
z = [0;0;0;0;0;0;0;0;0;0;0;0]
x = [carbonx; hydrox]
y = [carbony; hydroy]
%scatter plot of the points
scatter3(x, y, z)