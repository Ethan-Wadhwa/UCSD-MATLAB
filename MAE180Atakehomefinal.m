%% MAE 180A TAKE HOME FINAL %%
%Name: Ethan Wadhwa
%Student ID: A15778800
clear all;   % This clears all workspaces
close all;   % This closes all figures 
clc;         % This clears the command window

fprintf('MAE 180A TAKE HOME FINAL \n')
fprintf('Ethan Wadhwa \n')
fprintf('ID: A15778800 \n \n')


%% Problem 1 %%

%constants
a = 42164.16; %km
e=0.25;
i=pi/6; %rad
Omega = pi/2; %rad
w = pi/2; %rad
sid_day = 86164.1; %s
w_e = 2*pi/sid_day;
t = 0:1:sid_day; %time vector
w_e_t = (w_e*t); 

mew = 398600; %km^3/s^2
nu = zeros(1, length(t));

for k = 1:length(t)
    M = sqrt(mew/(a^3)) * t(k);
    nu(k) = 2*atan(sqrt((1+e)/(1-e))*tan(kepler_E(e,M)/2));
end

%perifocal coordinates
radius = (a*(1-e^2))./(1+e*cos(nu)); %vector of all radii to make perifocal vector
r_peri_x = radius.*(cos(nu));  %perifocal x vector
r_peri_y = radius.*(sin(nu));  %perifocal y vector
r_peri_z = radius.*(0);           %perifocal z vector

%Plotting perifocal coordinates
figure(1)
subplot(1,2,1)
hold on;
plot(t,r_peri_x, 'r')
plot(t,r_peri_y, 'b')
plot(t,r_peri_z, 'g')
title('X,Y,X Perifocal Coordinates over Time')
xlabel('Time (s)')
ylabel('Distance (km)')
legend('X','Y','Z')
hold off;

subplot(1,2,2)
hold on;
view(3);
plot3(r_peri_x, r_peri_y, r_peri_z, 'blue')
xlabel('X (KM)')
ylabel('Y (KM)')
zlabel('Z (KM)')
title('Satellite Path in Perifocal Coordinate System')
hold off;

%ECI coordinates

%transformation matrixes
G_3_Omega = [cos(Omega) sin(Omega) 0; -1*sin(Omega) cos(Omega) 0; 0 0 1]; %G_3,omega matrix
G_1_i = [1 0 0; 0 cos(i) sin(i); 0 -1*sin(i) cos(i)];                     %G_1,i matrix
G_3_w = [cos(w) sin(w) 0; -1*sin(w) cos(w) 0; 0 0 1];                     %G_3,w matrix
peri_to_eci_mat = (G_3_Omega')*(G_1_i')*(G_3_w'); %muliplied transposes of conversion matricies for ease

%setup of ECI coordinate vectors
r_eci_x = ones(1,length(r_peri_x));
r_eci_y = ones(1,length(r_peri_x));
r_eci_z = ones(1,length(r_peri_x));

%For loop performing PERI to ECI conversion
for l = 1:length(r_peri_x)
    %iterates over all defined times
    r_peri_vec = [r_peri_x(l); r_peri_y(l); r_peri_z(l)]; %defines new variable for each r_peri at each discrete time
    temp = peri_to_eci_mat*r_peri_vec; %temporary matrix to hold converted ECI R vector
    r_eci_x(l) = temp(1); %defines ECI x coordinate at each time
    r_eci_y(l) = temp(2); %defines ECI y coordinate at each time
    r_eci_z(l) = temp(3); %defines ECI z coordinate at each time
end

%Plotting ECI Coordinates
figure(2)
subplot(1,2,1)
hold on;
plot(t,r_eci_x, 'r')
plot(t,r_eci_y, 'b')
plot(t,r_eci_z, 'g')
title('X,Y,X ECI Coordinates over Time')
xlabel('Time (s)')
ylabel('Distance (km)')
legend('X','Y','Z')
hold off;

subplot(1,2,2)
hold on;
view(3);
plot3(r_eci_x, r_eci_y, r_eci_z, 'blue')
xlabel('X (KM)')
ylabel('Y (KM)')
zlabel('Z (KM)')
title('Satellite Path in ECI Coordinate System')
hold off;

%ECEF Coordinates
%setup of ECEF coordinate vectors
r_ecef_x = ones(1,length(r_peri_x));
r_ecef_y = ones(1,length(r_peri_x));
r_ecef_z = ones(1,length(r_peri_x));

for n = 1:length(t)
    %transformation matrix defined here as it changes with each step
    G_3_thetat = [cos(w_e_t(n)) sin(w_e_t(n)) 0; -sin(w_e_t(n)) cos(w_e_t(n)) 0; 0 0 1];
    r_eci_vec = [r_eci_x(n); r_eci_y(n); r_eci_z(n)];
    temp = G_3_thetat*r_eci_vec;
    r_ecef_x(n) = temp(1);
    r_ecef_y(n) = temp(2);
    r_ecef_z(n) = temp(3);
end

%Plotting ECEF Coordinates
figure(3)
subplot(1,2,1)
hold on;
plot(t,r_ecef_x, 'r')
plot(t,r_ecef_y, 'b')
plot(t,r_ecef_z, 'g')
title('X,Y,X ECEF Coordinates over Time')
xlabel('Time (s)')
ylabel('Distance (km)')
legend('X','Y','Z')
hold off;

subplot(1,2,2)
hold on;
view(3);
plot3(r_ecef_x, r_ecef_y, r_ecef_z, 'blue')
xlabel('X (KM)')
ylabel('Y (KM)')
zlabel('Z (KM)')
title('Satellite Path in ECEF Coordinate System')
hold off;


fprintf('Problem 1 \n')
fprintf('See Figure 1 for Perifocal Plots \n ')
fprintf('See Figure 2 for ECI Plots \n ')
fprintf('See Figure 3 for ECEF Plots \n \n')


%% Problem 2 %%
%constants
phi = 0.572468; %Geodetic lat (radians)
lambda = 4.235914; %geocentric long (radians)
rad_e_pol = 6356.75; %Earth polar radius (km)
rad_e_eq = 6378.14; %earth equaitorial radius (km)
ecc_e = 0.08182;

%finding R_ecef of ground station
rad_e = sqrt( (((rad_e_eq^2)*cos(phi))^2 + ((rad_e_pol^2)*sin(phi))^2) / ((rad_e_eq*cos(phi))^2 + (rad_e_pol*sin(phi))^2));
r_ecef_gs = rad_e*(sqrt(1-(ecc_e^2)*sin(phi)^2))*[cos(phi)*cos(lambda); cos(phi)*sin(lambda); (1-ecc_e^2)*sin(phi)];

% ECEF to ENU transformation matrices
G_2_phi = [ cos(phi) 0 -1*sin(phi); 0 1 0; sin(phi) 0 cos(phi)];
G_3_lambda = [ cos(lambda) sin(lambda) 0; -1*sin(lambda) cos(lambda) 0; 0 0 1];
ecef_to_ENU = [0 1 0; 0 0 1; 1 0 0]*(G_2_phi.')*G_3_lambda;

r_enu_sc_E = ones(length(r_peri_x),1);
r_enu_sc_N = ones(length(r_peri_x),1);
r_enu_sc_U = ones(length(r_peri_x),1);


for i = 1:length(r_peri_x)
    r_ecef_sc = [r_ecef_x(i); r_ecef_y(i); r_ecef_z(i)];
    r_enu_sc = ecef_to_ENU*(r_ecef_sc - r_ecef_gs);
    r_enu_sc_E(i) = r_enu_sc(1);
    r_enu_sc_N(i) = r_enu_sc(2);
    r_enu_sc_U(i) = r_enu_sc(3);
end

%Plotting ENU orbit
figure(4);
view(3);
plot3(r_enu_sc_E, r_enu_sc_N, r_enu_sc_U)
xlabel('East Component (KM)')
ylabel('North Component (KM)')
zlabel('Up Component (KM)')
title('ENU Orbit Plot centered around Ground Station')

%finding alt and elavation
[az,elev,slantRange] = enu2aer(r_enu_sc_E,r_enu_sc_N,r_enu_sc_U, 'radians');
deg5line = deg2rad(5).*ones(length(t),1);
figure(5);
hold on;
plot(t,elev)
plot(t,az)
plot(t,deg5line, '--');
xlabel('Time (s)')
ylabel('Angle (Rad)')
title('Azimuth and Elevation of ENU over time')
legend('Elevation', 'Azimuth', '5 Degrees', 'Location','bestoutside')
hold off;

fprintf('Problem 2 \n')
fprintf('See Figure 4 for ENU Plot \n')
fprintf('See Figure 5 for Azimuth & Elevation over time Plot \n \n')

%% Problem 3 %%
%given
x = [1;2;3];
Cx = [ 4 0 1; 0 8 -1; 1 -1 9]; 
y = [2; 1];
Cy = [16 2; 2 20];
A = [ 1 0.5 0.25; 1 0 -1];
B = [1 0.5; 0.25 0];

%calculation of z & Cz
fprintf('Problem 3 \n')
fprintf('Mean and CoVariance of Z are:')
z = A*x + B*y
Cz = A*Cx*A' + B*Cy*B'

fprintf(' \n \n')

%% Problem 4 %%

%given
n_step=40;
T=2*pi;
X_o = [1;0];
C_o = [2 0; 0 1/9];
coeff = [0 1; -1 0];
cw = 0.5; 
C_w = [0 0; 0 cw];
delta = T/(n_step);
time = 0:(T/n_step):T; %for plotting
x_mean = zeros(2, n_step);
x_mean(:,1) = X_o;
I = [1 0; 0 1];

C = zeros(2,2, (n_step));
C(:,:,1) = C_o;

for j = 2:(n_step+1)
    f_x = coeff*x_mean(:,(j-1));
    x_mean(:,j) = x_mean(:,(j-1)) + delta*f_x;
    A = I + delta*coeff;
    C(:,:,j) = (A*C(:,:,(j-1))*A') + (delta*C_w);
    
end

figure(6)
subplot(1,2,1)
hold on; 
plot(time,x_mean(1,:), 'red')
plot(time,x_mean(2,:), 'blue')
xlabel('Time')
xlim([0 2*pi])
ylabel('Magnitude')
legend('Distance', 'Velocity', 'Location', 'Northwest')
title('Plot of X(t) vs time')
hold off;


C_11(:) = C(1,1,:);
C_12(:) = C(1,2,:);
C_22(:) = C(2,2,:);

subplot(1,2,2)
hold on;
plot(time,C_11, 'red')
plot(time,C_12, 'green')
plot(time,C_22, 'blue')
xlabel('Time')
ylabel('Magnitude')
legend('C_1', 'C_2 & C_3', 'C_4', 'Location', 'Northwest')
title('Plot of C vs Time')
hold off;

std_x_2pi = sqrt(C_11(40));
std_y_2pi = sqrt(C_22(40));
fprintf('Problem 4 \n')
fprintf('See Figure 6 for Plots of X and Covariance \n' )
fprintf('Standard Deviation of Position: %f12 \n', std_x_2pi)
fprintf('Standard Deviation of Velocity: %f12 \n \n',std_y_2pi)

%% Problem 5 %%
Bk = [1 0];
v_n = 0;
q_v = 0.25;
C_pre = C(:,:,40);
y_n = 1.2;
X_pre = x_mean(:,40);

%Posteroiri Calculations
C_post = C_pre - C_pre*Bk'*inv(q_v + Bk*C_pre*Bk')*Bk*C_pre;
X_post = X_pre + C_post*Bk'*inv(q_v)*(y_n - Bk*X_pre);

std_pre = [std_x_2pi std_y_2pi];
std_post = [sqrt(C_post(1,1)) sqrt(C_post(2,2))];


fprintf('Problem 5 \n')
fprintf('The Posteriori Covariance is: \n')
fprintf(' %f8 %f8 \n', C_post)
fprintf('The A Priori State Vector is: \n')
fprintf(' %f8 %f8 \n', X_pre)
fprintf('The Posteriori State Vector is is: \n')
fprintf(' %f8 %f8 \n', X_post)
fprintf('The A Prioir standard deviation of position and velocity are: \n')
fprintf(' %f8 %f8 \n', std_pre)
fprintf('The Posteriori standard deviation of position and velocity are: \n')
fprintf(' %f8 %f8 \n', std_post)


