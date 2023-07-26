clear all;
clc;
close all;

T11 = [0 -25 -50 -75 -100 -113 -125 -150 -175 -200];
J11 = [105 104 103 97 63 40 34 28 25 24];

figure(1)
hold on;
plot(T11, J11)
xlabel('Temperature (Celcius)');
ylabel('Impact Energy (J)')
title('Problem 11 Plot')
hold off;

SA = [470 440 390 350 310 290 290 290];
CtF = [10^4 3*10^4 10^5 3*10^5 10^6 3*10^6 10^7 10^8];

figure(2) 
hold on;
plot(CtF, SA)
set(gca, 'XScale', 'log')
xlabel('Cycles to Failure')
ylabel('Maximum Stress (MPa)')
title('Problem 13 Plot')
hold off;

a = [0 20 40 60 80 90 95 100];
solidus= [1085 1019 972 934 911 928 974 1064];
liquidus= [1085 1045 996 946 911 942 984  1064];
figure(3)
hold on; 
plot(a,solidus)
plot(a, liquidus)
title('Copper-Gold System')
xlabel('wt% Au')
ylabel('Temperature (C)')