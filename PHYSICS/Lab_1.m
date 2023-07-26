errorbarxy(V2, I2, dV2, dI2)

model = @(p, V2) (1/p(1)).*V2 ;
guess=[2];

wnlfit(V2, I2, dV2, dI2, model, guess);
title('Current vs Voltage of a lightbulb in a circuit');
xlabel('Voltage (V)');
ylabel('Current (A)');