dI=zeros(size(I));
dV=zeros(size(V));


errorbarxy(V, I, dV, dI)
title('2.2V Accelerating Voltage: Current vs Final Voltage')
ylabel('Current (Amps)')
xlabel('Voltage (Volts)')