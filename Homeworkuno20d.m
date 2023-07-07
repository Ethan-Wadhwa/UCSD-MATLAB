%1.1
%a) matlab quiz is from mignight on 3/10 to noon on 3/11
%b) it will be in the quizzes tab on canvas

%1.2
log(20)/log(8)


%1.3
m = -3:0.4:12
%m will count in increments of .4 from -3 to 12. 
%if we type in m(26), we will get the 26th output of this function, 7
m(26)

%1.4 
%revised z (with one more parenthesis and a * between the 7 and start of exp expression)
z = 25-(100-7*exp(5+cos(pi/3)))

%1.5
asin(1)

%1.6
%a)
%B&C (i did them in one function cause it was pretty easy)
%geomSeq(1/4)
%function geomSeq(soontobeR)
%r=soontobeR
%a=1
%for i=1:7
%    a*(r^i)
%end
%end

%1.7
%mysum(3,12)
%function mysum(r,n)
%sum=0
%for i=0:n
%    sum = sum+(1/(r^i))
%end
%end

%1.8
%g = @(x) sin(x)/x
%fplot(g, [-10, 10])

%1.9
syms s t
diff(log(sin(s)+cos(t)),t)
diff(log(sin(s)+cos(t)),s)

%1.10
%A) dy/dt=sin(t) -> y=-cos(t)+C
dsolve('Dy=sin(t)')
dsolve('Dy=sin(t)', 'y(0)=3')

%1.11
dsolve('Dy=-exp(y)/(t*exp(y)-sin(y))')