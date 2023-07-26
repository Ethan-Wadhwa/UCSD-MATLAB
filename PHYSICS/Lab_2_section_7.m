
dT=zeros(size(t));
dV=0.0005445*ones(size(V));
t=t-t(1);
V=V+0.003
model = @(p, t) p(1).* exp(-t./p(2)) ;
guess=[2.9 .03];

errorbarxy(t,V,dT,dV)

wnlfit(t, V, dT, dV, model, guess);
title('Voltage over time of Capacitor discharging in circuit with 1000ohm resistor');
xlabel('time (s)');
ylabel('Voltage (V)');
