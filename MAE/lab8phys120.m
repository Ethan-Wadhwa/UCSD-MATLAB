clear all;
close all;
clc;
freqs=[1 2 3 4 5];
freqs = 10.^freqs
Vin = [1.08 1.08 1.04 1 1.04];
Vout = [0.123 0.488 4.24 9.04 30];
gain = Vout./Vin
top=0.00102*2*pi;
bot1=0.0000122*2*pi;
bot2=0.0000101*2*pi;
theory= (top.*freqs)./((1+bot1.*freqs).*(1+bot2.*freqs))

figure(1)
loglog(freqs,gain, 'Color', 'r')
hold on;
loglog(freqs,theory, 'Color', 'b')
title('Gain vs Frequency Bode Plot')
xlabel('Log Frequency (Hz)')
ylabel('Log Gain')
legend('Measured Gains','Theoretical Plot', 'Location', 'northwest')
