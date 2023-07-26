%%MAE 101A HW 1
clc; 
clear all;
close all;
%1.a
torque = [ 0 20.5 28.3 36.1 37.8 ]; %(lb/ft^2)
gamma = [ 0 50 100 150 200]; %(s^-1)
hold on;
mypolyfit(gamma, torque, 2)
title('l (a)')
xlabel('gamma (s^-1)')
ylabel('torque (lb/ft^2)')

hold off



x = 1:1000;
func = (1:1000).*(1:1000);
G=-1./func

loglog(x,G)