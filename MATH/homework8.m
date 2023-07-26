disp('Homework 8')

disp('Problem 1')
A=randi([-10,10],1,10);
sort(A, 'descend')

disp('Problem 2')
sort(A, 'ascend')

disp('Problem 3')
clear all;
a=[1 2 3 4; 5 6 7 8; 9 10 11 12; 13 14 15 16]
s=5;
for t= 1:s
    if t==1
        %part 1
        transpose=a'
    elseif t==2
        %part 2
        lowertri=tril(a)
    elseif t==3
        %part 3
        uppertrizeros=triu(a)
    elseif t==4
        %part 4
        lowertrizeros=tril(a)
    elseif t==5
        %part 5
        uppertri=triu(a')
    end
end

disp('Problem 4')
clear all;
%i)
i=sin(pi/6)
%ii)
syms x
format long;

ii=taylor(sin(x),x)
%n=# of terms
%f is the answer as more is added to it
f=0;
n=9;
for c = 1:n
    if rem(n,2)~=0
        if n==1 | n==5 | n==9
            f=f+(((pi/6)^n)/factorial(n));
        elseif n==3 | n==7 | n==11
            f=f-(((pi/6)^n)/factorial(n));
        end
    end
end
f

disp('Problem 5')
clear all
%K is the inputed vector or array
K=[]
MaxValue = -Inf;
MinValue = Inf;
row = 0;
column = 0;
for i = 1:size(K, 1)
    for j = 1:size(K, 2)
        if K(i, j) > MaxValue
            MaxValue = K(i, j);
            row = i;
            column = j;
        elseif K(i, j) < MinValue
            MinValue = K(i,j)
            row = i;
            column = j;
        end
    end
end