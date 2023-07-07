dV=0.000276
dT=zeros(size(T));
dV=dV*ones(size(V));

errorbarxy(T,V,dT,dV);
model=@(p,T) p(1).*exp(-T./p(2)) + p(3) ;
guess = [0.35 0.00055 0.65]

wnlfit(T, V, dT, dV, model, guess);
title('Voltage over time of RL circuit with iron core');
xlabel('Time (s)');
ylabel('Voltage (V)');