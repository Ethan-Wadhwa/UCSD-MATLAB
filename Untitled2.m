C=[0.252,0.131,0.038]
x=[0.001695, 0.006780, 0.02712]
dC=[0.003,0.003,0.002]
dX=[0.0000025,0.00001,0.00004]
errorbar(x,C,dC)

model = @(p, x) (0.01*pi*p(1))./x +p(2);
guess=[0.015, 0];

wnlfit(x, C, dX, dC, model, guess);
title('Capacitance versus seperation distance');
ylabel('Capacitance (nF)');
xlabel('seperation d (meters)');