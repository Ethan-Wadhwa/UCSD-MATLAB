syms y(x)
ode = (diff(y,x)==(y^3)*(exp(sin(x+y^2))));
cond = y(2020)==0;
ySol(x) = dsolve(ode,cond)