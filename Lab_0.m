dx = zeros(size(x));
dy = 3.994*(10^(-4))* ones(size(y));

errorbarxy(x, y, dx, dy)

model = @(p, x) p(1).* exp(-x./p(2)) + p(3);
guess=[0.7 0.8 1];         
x = x - x(1);

wnlfit(x, y, dx, dy, model, guess);
title('Voltage over Time of RC Circuit');
xlabel('Time (s)');
ylabel('Voltage (V)');