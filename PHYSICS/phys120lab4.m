clear all;   % This clears all workspaces
close all;   % This closes all figures 
clc;         % This clears the command window

Ib=[0.0000044 0.0000087 0.0000215 0.0000420 0.0000804];
Ic = [0.624 1.255 3.105 6.055 11.372];
DIc = ones(1,5)*0.001;
DIb = zeros(1,5);
plot(Ib, Ic)
title('Base Current vs Collector Current')
xlabel('Base Current (A)')
ylabel('Collector Current (A)')