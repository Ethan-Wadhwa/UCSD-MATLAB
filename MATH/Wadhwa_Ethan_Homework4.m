syms y(t); 
Dy = diff(y);
s=dsolve(Dy==(-y)./sqrt(1-t.^2))
C1=10;
s
%syms f(x);
%Df = diff(f)
%dsolve(-Df+2*x==0)

%clear
%syms y(t) x;
%Dy=diff(y);
%D2y=diff(Dy);
%D3y=diff(D2y);
%u = dsolve(D2y-sin(x)/x*(1-2/x^2)-2*cos(x)/ == 5*sin(7*x))

