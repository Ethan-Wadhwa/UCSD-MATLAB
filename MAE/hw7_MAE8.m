%%Homework 7

clear all;   % This clears all workspaces
close all;   % This closes all figures 
clc;         % This clears the command window
format long; 

name = 'Ethan Wadhwa';
id = 'A15778800';
hw_num = 7;


%Problem 1: 
%Consider the topography of a terrain stored in the file terrain.mat. Download
%the file from CANVAS and load it into MATLAB. The file contains the spatial coordinates
%of the terrain in vectors x and y and the altitude in a 2-dimensional matrix altitude. The
%coordinates and the altitude are given in the unit of meters.
load('terrain.mat')

%(a - d) How many peaks (i.e. local maxima) are there on the terrain? Put the answer in
%p1a. Exclude the peaks on the boundaries of the terrain. Find the x- and y- coordinates
%and the altitude of the peaks and put the answers in p1b, p1c and p1d, respectively.
localmaxima=imregionalmax(altitude);
p1a=sum(sum(localmaxima))
[localmax_x localmax_y] = find(localmaxima);
p1b=x(localmax_x)
p1c=y(localmax_y)
p1d=altitude(localmaxima)

%(e - g) Snow falls at elevations above 1,100 m. Find the x- and y-coordinates and the
%altitude of locations (points) on the terrain with snow cover and put the answers in p1e,
%p1f and p1g, respectively.
snowfallelevations=altitude(altitude > 1100);
moreThanThresh = altitude > 1100;
[snowfallx snowfally] = find(moreThanThresh);

p1e=x(snowfallx)
p1f=y(snowfally)
p1g=snowfallelevations

%(h) Make figure 1 to include the following items:
%•Use function surf to plot the terrain. Use shading interp to make the surface plot
%smooth. Set view(3) to put the plot in three-dimensional view.
%•Use red filled circles with a marker size of 10 to identify the peaks.
%•Use green filled circles with a marker size of 4 to identify the snow cover.
%•Extra credit (5 points): A ball is initially released on the terrain at the coordinates 
%(x= 8 km, y = -8 km). Assume that the ball follows a path with steepest slope. Use
%magenta solid line with a line width of 4 to mark the descent of the ball.
%Be sure to label axes with correct units, provide a title and include a legend box. Set p1h
%= 'See figure 1'. If attempt the extra credit, set p1i = 'See ball trajectory'.
figure(1)
surf(y,x,altitude)
colormap winter
hold on;
for i = 1:length(localmax_x)
    plot3(y(localmax_y(i)), x(localmax_x(i)),altitude(localmax_x(i),localmax_y(i)), 'MarkerFaceColor', 'red', 'Marker', 'o', 'MarkerSize', 10 )
end
for i = 1:length(snowfallelevations)
    plot3(y(snowfally(i)), x(snowfallx(i)),snowfallelevations(i), 'MarkerFaceColor', 'green', 'Marker', 'o', 'MarkerSize', 4, 'MarkerEdgeColor', 'green' )
end
xlabel('Y (meters)');
ylabel('X (meters)');
zlabel('Altitude (meters)');
title('Altitude Map with Snowfall')
colorbar;
hold off;

p1h = 'See figure 1'


%Problem 2:
%Download the file matB.mat from CANVAS. The file contains a two-dimensional matrix
%matB. Use break or continue statements to perform the following exercises with matB.
load('matB.mat')
%(a) Sum all elements that are above the diagonal. Put the answer in p2a.
diagB = diag(matB);
p2a=0;
for r = 1:15
    for c = 1:15
        if c >= r
            if c+1 > 15
                continue
            else
                p2a=matB(r,c+1)+p2a;
            end
        end
    end
end
p2a 

%(b) Find the product of all elements that are below the diagonal. Put the answer in p2b.
p2b=1;
for r = 1:15
    for c = 1:15
        if c <= r
            if c-1 < 1
                continue
            else
                p2b = p2b*matB(r,c-1);
            end
        end
    end
end
p2b
%(c) Sum all elements in matB. Exclude the elements whose column index is twice as
%large as their row index. Put the answer in p2c.
p2c=0;
for r = 1:15
    for c = 1:15
        if c == 2*r
            continue
        else
            p2c = p2c + matB(r,c);
        end
    end
end
p2c

%(d) Find the product of all elements in matB. Exclude the elements whose value is larger
%than their row index. Put the answer in p2d.
p2d=1;
for r = 1:15
    for c = 1:15
        if matB(r,c) > r
            continue
        else
            p2d = p2d * matB(r,c);
        end
    end
end
p2d


%Problem 3:
%(a) Set p3a=evalc('help car').
p3a=evalc('help car')

%(b, c, d) Use function car to get the time, distance, and velocity of the car for Tf = 60
%s. Put the answers to p3b, p3c, and p3d, respectively. Use 10-second time step.
[p3b p3c p3d] = car(60,10)

%(e, f, g) Repeat the step above with 1-second time step. Put the time, distance, and
%velocity into p3e, p3f, and p3g, respectively.
[p3e p3f p3g] = car(60,1)
%(h) Create figure 2. Use function subplot to include 2 panels with one on top of the
%other. Plot distance versus time in the top panel. The top panel should include 2 curves:
%the 10-second time step in parts (b, c) and the 1-second time step in parts (e, f). Plot
%velocity versus time in the bottom panel. The bottom panel should also include 2 curves:
%the 10-second time step in parts (b, d) and the 1-second time step in parts (e, g). Use solid
%lines with different filled symbols for the curves. Set p3h='See figure 2'.

figure(2)
t1 = linspace(0,60,6);
t2 = linspace(0,60,60);
U1=0;
X1=0;
dist1 = [];
vel1=[];
for n = 1:length(t1)
    Tn = t1(n);
    Un = ( 5*(sech(Tn/20)^2)*tanh(Tn/20)*(t1(n)/n) );
    U1 = U1 + Un;
    X1 = X1 + Un*(t1(n)/n);
    dist1 = [dist1 X1];
    vel1 = [vel1 U1];
end
U2=0;
X2=0;
dist2 = [];
vel2=[];
for n = 1:length(t2)
    Tn2 = t2(n);
    Un2 = (5*(sech(Tn2/20)^2)*tanh(Tn2/20)*(t2(n)/n) );
    U2 = U2 + Un2;
    X2 = X2 + Un2*(t2(n)/n);
    dist2 = [dist2 X2];
    vel2 = [vel2 U2];
end

subplot(2,1,1)
hold on;
plot(t1,dist1)
plot(t2,dist2)
legend('10s step line', '1s step line')
title('Subplot 1: Distance vs Time')
xlabel('Time (s)')
ylabel('Distance (m)')
hold off;

subplot(2,1,2)
hold on;
plot(t1,vel1)
plot(t2,vel2)
legend('10s step line', '1s step line')
title('Subplot 2: Velocity vs Time')
xlabel('TIme (s)')
ylabel('Velocity (m/s)')

hold off;


%Problem 4:
%(a) Set p4a = evalc('help rocket').
p4a = evalc('help rocket')
%(b) Set p4b = evalc('help gravity').
p4b = evalc('help gravity')
%(c) Set p4c = evalc('help thrust').
p4c = evalc('help thrust')
%(d) Set p4d = evalc('help rocket>gravity').
p4d = evalc('help rocket>gravity')
%(e) Set p4e = evalc('help rocket>thrust').
p4e=evalc('help rocket>thrust')
%(f,g) Compute the altitude and velocity of the rocket after 120 s using ?t = 0.1s. Put the
%answers in p4f and p4g, respectively. The answers should be single numbers, not vectors.
[a, p4f, p4g] = rocket(120,0.1);
p4f
p4g
%(h) Create figure 3. Use function subplot to include 2 panels with one on top of the
%other. The top panel shows how the altitude of the rocket changes with time during the
%120-second flight. The bottom panel shows velocity versus time. Set p4h = 'See figure 3'.
figure(3)
time = linspace(0,120,1200);
Z = 0;
m = 10; %given in kg
W = 0;
rocketalt = [];
rocketvel = [];
for n = 1:length(time)
    t = time(n);
    if t >= 0 && t < 2
        Th = 670;
    elseif t >= 2 && t < 4
        Th = 1360;
    else
        Th = 0;
    end
    if Z >= 0 && Z <= 10000
        g = 9.81 * (1- (Z/1000)^3);
    elseif Z > 10000
        g = 0;
    else
        g = 9.81;
    end
    W = W + ( (Th/m) - g )*(time(n)/n);
    Z = Z + W*(time(n)/n);
    rocketalt = [rocketalt Z];
    rocketvel = [rocketvel W];
end

subplot(2,1,1)
plot(time,rocketalt)
xlabel('Time (s)')
ylabel('Altitude (m)')
title('Subplot 1: Altitude vs Time of Rocket')

subplot(2,1,2)
plot(time,rocketvel)
xlabel('Time (s)')
ylabel('Velocity (m/s)')
title('Subplot 1: Velocity vs Time of Rocket')
