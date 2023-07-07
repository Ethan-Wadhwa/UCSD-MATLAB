dC=dC1+dC2
C=C2 - C1
x=[589.976; 294.998; 196.959; 147.494; 117.995; 98.329; 84.282; 73.747; 58.998; 49.165; 42.141; 36.873]

dX=[1.74; 0.87; 0.58; 0.435; 0.348; 0.290; 0.249; 0.218; 0.174; 0.145; 0.124; 0.109]
errorbarxy(x,C,dX,dC)
model = @(p, x) (0.01*pi*p(1)).*x ;
guess=[1];

wnlfit(x, C, dX, dC, model, guess);
title('Capacitance versus seperation distance');
ylabel('Capacitance (nF)');
xlabel('1/d (1/meter)');