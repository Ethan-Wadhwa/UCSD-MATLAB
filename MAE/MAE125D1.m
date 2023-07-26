clear all;
close all;
clc; 

%Power = xlsread('C:\Users\ethan\Desktop\MAE125\GeiselLibrary.csv');
%RealP = (27/286).*Power(:,1);
%TimeF = 23.75;
%day = 0:0.25:TimeF;

%dayPowerUsage = flip(RealP(1:length(day)));
%figure(1)
%hold on;
%plot(day,dayPowerUsage);
%xlabel('Time (Hours)')
%ylabel('Energy Usage (kWh)')
%title('Geisel Energy Usage Over 1 Day')
%hold off; 

%week=0:0.25:(24*6+TimeF);
%weekPowerUsage = flip(RealP(1:length(week)));
%figure(2)
%hold on;
%plot(week,weekPowerUsage);
%xlabel('Time (Hours)')
%ylabel('Energy Usage (kWh)')
%title('Geisel Energy Usage Over 1 Week')
%hold off; 


%year=0:0.25:(24*364+TimeF);
%yearPowerUsage = flip(RealP(1:length(year)));
%figure(3)
%hold on;
%plot(year,yearPowerUsage);
%xlabel('Time (Hours)')
%ylabel('Energy Usage (kWh)')
%title('Geisel Energy Usage Over 1 Year')
%hold off; 

x = 0:0.01:1;
syms n
z = symsum( sqrt(2)*(-2/n*pi)*(cos(n*pi/2)-1)*sin(n*pi*x)*exp(-i*2*pi*n^2), n, 1, 7) ;
hold on;
plot(x,z)
title('Plot of Wavefunction to 7th sum at T=2pi*hbar/E1')
xlabel('X')
ylabel('Wavefunction')
hold off;