
x=[589.971, 147.492, 36.873]

dX=[0,0,0]
errorbar(x,C,dC)

model = @(p, x) (0.01*pi*p(1)).*x +;
guess=[1];

wnlfit(x, C, dX, dC, model, guess);
title('Capacitance versus seperation distance');
ylabel('Capacitance (nF)');
xlabel('1/d (1/meter)');