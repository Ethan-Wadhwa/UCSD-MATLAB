
clear all;   % This clears all workspaces
close all;   % This closes all figures 
clc;         % This clears the command window

freq = [10 11 12 13 14 15 16 17 18 19 20]
input = 20*ones(1,10)
output = [2.08 2.56 3.44 4.64 6.88 10.9 14.6 10.8 7.2 6.0 4.20] 
phaseshift = [-74.67 -73.27 -68.21 -64.88 -55.81 -35.59 5.533 45.85 62.21 68.32 73.75]

hold on
grid on
scatter(freq,output)
%fplot(@(x) 45*(x-15.916)^(1/3) , [15.916, 20], 'b')  %ps theory plot
%fplot(@(x) -45*(15.916-x)^(1/3) , [10,15.916], 'b')  %ps theory plot
fplot(@(x) (21*exp(-1/3)) -5.5*(abs(x-15.916))^(1/2), [10,20])
title('Input Frequency vs Output Amplitude')
ylabel('Output Amplitude (V)')
xlabel('Frequency (kHz)')
legend('Measured Points', 'Theory Line','Location', 'northwest')
hold off