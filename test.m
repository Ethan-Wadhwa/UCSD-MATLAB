%test
clear all;   % This clears all workspaces
close all;   % This closes all figures 
clc;         % This clears the command window

%constants
a = 42164.16; %km
e=0.25;
i=pi/6; %rad
Omega = pi/2; %rad
w = pi/2; %rad
mew = 398600; %km^3/s^2
sid_day = 86164.1; %s
w_e = 2*pi/sid_day;
w_e
sqrt(mew/(a^3))
t = 0:1:sid_day; %time vector
M = sqrt(mew/(a^3)) * t;
w_e_t = (w_e*t); 
E = kepler_E(e,M);
nu = 2*atan(sqrt((1+e)/(1-e)).*tan(E/2));

%perifocal coordinates
radius = (a*(1-e^2))./(1+e*cos(nu)); %vector of all radii to make perifocal vector
r_peri_x = radius.*(cos(nu));  %perifocal x vector
r_peri_y = radius.*(sin(nu));  %perifocal y vector
r_peri_z = radius.*(0);           %perifocal z vector


%Plotting the curves
figure(1)
view(3);
hold on;
plot3(r_peri_x, r_peri_y, r_peri_z, 'blue')
xlabel('X (KM)')
ylabel('Y (KM)')
zlabel('Z (KM)')
title('Satellite Path in Perifocal Coordinate System')
hold off;