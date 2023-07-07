t2=t2-t2(1);
noise=0.000104;
dV2=ones(size(V2))*noise
dt2=zeros(size(t2));

errorbarxy(t2,V2,dt2,dV2);
model=@(p,t2) p(1).*exp(-t2./(2*p(2))).*sinh(p(3)*t2 + p(4))+p(5)
guess = [0.03 0.000435 697.77 0 0]
wnlfit(t2, V2, dt2, dV2, model, guess);
title('Overdamped Oscillations in RLC circuit');
xlabel('Time (seconds)');
ylabel('Voltage (Volts)');