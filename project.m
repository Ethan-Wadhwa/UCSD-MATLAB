%%MAE8 Project

clear all;   % This clears all workspaces
close all;   % This closes all figures 
clc;         % This clears the command window
format long; 

name = 'Ethan Wadhwa';
id = 'A15778800';
hw_num = 'project';
load('terrain.mat')

maxvels=[];
maxaccels=[];
integratedKE=[];

%Experiment 1
%full screen for best visibility
exp1dists = [];
masses = [];


figure(1);
sgtitle('Experiment #1') 

subplot(2,3,1)
view(3);  
[m1, k1, l1, Xo1, Yo1, Zo1, Uo1, Vo1, Wo1] = read_input('bungee_data.txt', 1);
[T, X, Y, Z, U, V, W, safety]=bungee(m1, k1, l1, Xo1, Yo1, Zo1, Uo1, Vo1, Wo1);
hold on;
plot3(X,Y,Z, 'Color', 'black')
plot3(X(end), Y(end), Z(end), 'Marker', '.', 'Color', 'r', 'LineWidth' , 10)
surf(x_terrain,y_terrain,h_terrain)
colormap('winter'); shading interp;
grid on; xlabel('x (m)'); ylabel('y (m)'); zlabel('z (m)');
title(['Trial 1 Mass: ', num2str(m1), 'kg'])
hold off;
dist = 0.02.*sqrt( (U.^2) + (V.^2) + (Z.^2) );
exp1dists = [exp1dists sum(dist)];
masses=[masses m1];
vels = sqrt((U.^2)+(V.^2)+(W.^2));
maxvels=[maxvels max(vels)];
accels=[];
for i = 2:length(vels)
    accels = [accels (vels(i)-vels(i-1))/0.02];
end
maxaccels=[maxaccels max(accels)];
KE=(1/2).*m1.*(vels.^2);
integratedKE=[integratedKE sum(KE)];

subplot(2,3,2)
view(3);  
[m1, k1, l1, Xo1, Yo1, Zo1, Uo1, Vo1, Wo1] = read_input('bungee_data.txt', 2);
[T, X, Y, Z, U, V, W, safety]=bungee(m1, k1, l1, Xo1, Yo1, Zo1, Uo1, Vo1, Wo1);
hold on;
plot3(X,Y,Z, 'Color', 'black')
plot3(X(end), Y(end), Z(end), 'Marker', '.', 'Color', 'r', 'LineWidth' , 10)
surf(x_terrain,y_terrain,h_terrain)
colormap('winter'); shading interp;
grid on; xlabel('x (m)'); ylabel('y (m)'); zlabel('z (m)');
title(['Trial 2 Mass: ', num2str(m1), 'kg'])
hold off;
dist = 0.02.*sqrt( (U.^2) + (V.^2) + (Z.^2) );
exp1dists = [exp1dists sum(dist)];
masses=[masses m1];
vels = sqrt((U.^2)+(V.^2)+(W.^2));
maxvels=[maxvels max(vels)];
accels=[];
for i = 2:length(vels)
    accels = [accels (vels(i)-vels(i-1))/0.02];
end
maxaccels=[maxaccels max(accels)];
KE=(1/2).*m1.*(vels.^2);
integratedKE=[integratedKE sum(KE)];

subplot(2,3,3)
view(3);  
[m1, k1, l1, Xo1, Yo1, Zo1, Uo1, Vo1, Wo1] = read_input('bungee_data.txt', 3);
[T, X, Y, Z, U, V, W, safety]=bungee(m1, k1, l1, Xo1, Yo1, Zo1, Uo1, Vo1, Wo1);
hold on;
plot3(X,Y,Z, 'Color', 'black')
plot3(X(end), Y(end), Z(end), 'Marker', '.', 'Color', 'r', 'LineWidth' , 10)
surf(x_terrain,y_terrain,h_terrain)
colormap('winter'); shading interp;
grid on; xlabel('x (m)'); ylabel('y (m)'); zlabel('z (m)');
title(['Trial 3 Mass: ', num2str(m1), 'kg'])
hold off;
dist = 0.02.*sqrt( (U.^2) + (V.^2) + (Z.^2) );
exp1dists = [exp1dists sum(dist)];
masses=[masses m1];
vels = sqrt((U.^2)+(V.^2)+(W.^2));
maxvels=[maxvels max(vels)];
accels=[];
for i = 2:length(vels)
    accels = [accels (vels(i)-vels(i-1))/0.02];
end
maxaccels=[maxaccels max(accels)];
KE=(1/2).*m1.*(vels.^2);
integratedKE=[integratedKE sum(KE)];

subplot(2,3,4)
view(3);  
[m1, k1, l1, Xo1, Yo1, Zo1, Uo1, Vo1, Wo1] = read_input('bungee_data.txt', 4);
[T, X, Y, Z, U, V, W, safety]=bungee(m1, k1, l1, Xo1, Yo1, Zo1, Uo1, Vo1, Wo1);
hold on;
plot3(X,Y,Z, 'Color', 'black')
plot3(X(end), Y(end), Z(end), 'Marker', '.', 'Color', 'r', 'LineWidth' , 10)
surf(x_terrain,y_terrain,h_terrain)
colormap('winter'); shading interp;
grid on; xlabel('x (m)'); ylabel('y (m)'); zlabel('z (m)');
title(['Trial 4 Mass: ', num2str(m1), 'kg'])
hold off;
dist = 0.02.*sqrt( (U.^2) + (V.^2) + (Z.^2) );
exp1dists = [exp1dists sum(dist)];
masses=[masses m1];
vels = sqrt((U.^2)+(V.^2)+(W.^2));
maxvels=[maxvels max(vels)];
accels=[];
for i = 2:length(vels)
    accels = [accels (vels(i)-vels(i-1))/0.02];
end
maxaccels=[maxaccels max(accels)];
KE=(1/2).*m1.*(vels.^2);
integratedKE=[integratedKE sum(KE)];

subplot(2,3,5)
view(3);  
[m1, k1, l1, Xo1, Yo1, Zo1, Uo1, Vo1, Wo1] = read_input('bungee_data.txt', 5);
[T, X, Y, Z, U, V, W, safety]=bungee(m1, k1, l1, Xo1, Yo1, Zo1, Uo1, Vo1, Wo1);
hold on;
plot3(X,Y,Z, 'Color', 'black')
plot3(X(end), Y(end), Z(end), 'Marker', '.', 'Color', 'r', 'LineWidth' , 10)
surf(x_terrain,y_terrain,h_terrain)
colormap('winter'); shading interp;
grid on; xlabel('x (m)'); ylabel('y (m)'); zlabel('z (m)');
title(['Trial 5 Mass: ', num2str(m1), 'kg'])
hold off;
dist = 0.02.*sqrt( (U.^2) + (V.^2) + (Z.^2) );
exp1dists = [exp1dists sum(dist)];
masses=[masses m1];
vels = sqrt((U.^2)+(V.^2)+(W.^2));
maxvels=[maxvels max(vels)];
accels=[];
for i = 2:length(vels)
    accels = [accels (vels(i)-vels(i-1))/0.02];
end
maxaccels=[maxaccels max(accels)];
KE=(1/2).*m1.*(vels.^2);
integratedKE=[integratedKE sum(KE)];

subplot(2,3,6)
view(3);  
[m1, k1, l1, Xo1, Yo1, Zo1, Uo1, Vo1, Wo1] = read_input('bungee_data.txt', 6);
[T, X, Y, Z, U, V, W, safety]=bungee(m1, k1, l1, Xo1, Yo1, Zo1, Uo1, Vo1, Wo1);
hold on;
plot3(X,Y,Z, 'Color', 'black')
plot3(X(end), Y(end), Z(end), 'Marker', '.', 'Color', 'r', 'LineWidth' , 10)
surf(x_terrain,y_terrain,h_terrain)
colormap('winter'); shading interp;
grid on; xlabel('x (m)'); ylabel('y (m)'); zlabel('z (m)');
title(['Trial 6 Mass: ', num2str(m1), 'kg'])
hold off;
dist = 0.02.*sqrt( (U.^2) + (V.^2) + (Z.^2) );
exp1dists = [exp1dists sum(dist)];
masses=[masses m1];
vels = sqrt((U.^2)+(V.^2)+(W.^2));
maxvels=[maxvels max(vels)];
accels=[];
for i = 2:length(vels)
    accels = [accels (vels(i)-vels(i-1))/0.02];
end
maxaccels=[maxaccels max(accels)];
KE=(1/2).*m1.*(vels.^2);
integratedKE=[integratedKE sum(KE)];


%Experiment 2
%full screen for best visibility
exp2dists=[];
springconsts=[];

figure(2);
sgtitle('Experiment #2') 

subplot(2,3,1)
view(3);  
[m1, k1, l1, Xo1, Yo1, Zo1, Uo1, Vo1, Wo1] = read_input('bungee_data.txt', 7);
[T, X, Y, Z, U, V, W, safety]=bungee(m1, k1, l1, Xo1, Yo1, Zo1, Uo1, Vo1, Wo1);
hold on;
plot3(X,Y,Z, 'Color', 'black')
plot3(X(end), Y(end), Z(end), 'Marker', '.', 'Color', 'r', 'LineWidth' , 10)
surf(x_terrain,y_terrain,h_terrain)
colormap('winter'); shading interp;
grid on; xlabel('x (m)'); ylabel('y (m)'); zlabel('z (m)');
title(['Trial 1 Spring: ', num2str(k1), 'N/m'])
hold off;
dist = 0.02.*sqrt( (U.^2) + (V.^2) + (Z.^2) );
exp2dists = [exp2dists sum(dist)];
springconsts=[springconsts k1];
vels = sqrt((U.^2)+(V.^2)+(W.^2));
maxvels=[maxvels max(vels)];
accels=[];
for i = 2:length(vels)
    accels = [accels (vels(i)-vels(i-1))/0.02];
end
maxaccels=[maxaccels max(accels)];
KE=(1/2).*m1.*(vels.^2);
integratedKE=[integratedKE sum(KE)];

subplot(2,3,2)
view(3);  
[m1, k1, l1, Xo1, Yo1, Zo1, Uo1, Vo1, Wo1] = read_input('bungee_data.txt', 8);
[T, X, Y, Z, U, V, W, safety]=bungee(m1, k1, l1, Xo1, Yo1, Zo1, Uo1, Vo1, Wo1);
hold on;
plot3(X,Y,Z, 'Color', 'black')
plot3(X(end), Y(end), Z(end), 'Marker', '.', 'Color', 'r', 'LineWidth' , 10)
surf(x_terrain,y_terrain,h_terrain)
colormap('winter'); shading interp;
grid on; xlabel('x (m)'); ylabel('y (m)'); zlabel('z (m)');
title(['Trial 2 Spring: ', num2str(k1), 'N/m'])
hold off;
dist = 0.02.*sqrt( (U.^2) + (V.^2) + (Z.^2) );
exp2dists = [exp2dists sum(dist)];
springconsts=[springconsts k1];
vels = sqrt((U.^2)+(V.^2)+(W.^2));
maxvels=[maxvels max(vels)];
accels=[];
for i = 2:length(vels)
    accels = [accels (vels(i)-vels(i-1))/0.02];
end
maxaccels=[maxaccels max(accels)];
KE=(1/2).*m1.*(vels.^2);
integratedKE=[integratedKE sum(KE)];

subplot(2,3,3)
view(3);  
[m1, k1, l1, Xo1, Yo1, Zo1, Uo1, Vo1, Wo1] = read_input('bungee_data.txt', 9);
[T, X, Y, Z, U, V, W, safety]=bungee(m1, k1, l1, Xo1, Yo1, Zo1, Uo1, Vo1, Wo1);
hold on;
plot3(X,Y,Z, 'Color', 'black')
plot3(X(end), Y(end), Z(end), 'Marker', '.', 'Color', 'r', 'LineWidth' , 10)
surf(x_terrain,y_terrain,h_terrain)
colormap('winter'); shading interp;
grid on; xlabel('x (m)'); ylabel('y (m)'); zlabel('z (m)');
title(['Trial 3 Spring: ', num2str(k1), 'N/m'])
hold off;
dist = 0.02.*sqrt( (U.^2) + (V.^2) + (Z.^2) );
exp2dists = [exp2dists sum(dist)];
springconsts=[springconsts k1];
vels = sqrt((U.^2)+(V.^2)+(W.^2));
maxvels=[maxvels max(vels)];
accels=[];
for i = 2:length(vels)
    accels = [accels (vels(i)-vels(i-1))/0.02];
end
maxaccels=[maxaccels max(accels)];
KE=(1/2).*m1.*(vels.^2);
integratedKE=[integratedKE sum(KE)];

subplot(2,3,4)
view(3);  
[m1, k1, l1, Xo1, Yo1, Zo1, Uo1, Vo1, Wo1] = read_input('bungee_data.txt', 10);
[T, X, Y, Z, U, V, W, safety]=bungee(m1, k1, l1, Xo1, Yo1, Zo1, Uo1, Vo1, Wo1);
hold on;
plot3(X,Y,Z, 'Color', 'black')
plot3(X(end), Y(end), Z(end), 'Marker', '.', 'Color', 'r', 'LineWidth' , 10)
surf(x_terrain,y_terrain,h_terrain)
colormap('winter'); shading interp;
grid on; xlabel('x (m)'); ylabel('y (m)'); zlabel('z (m)');
title(['Trial 4 Spring: ', num2str(k1), 'N/m'])
hold off;
dist = 0.02.*sqrt( (U.^2) + (V.^2) + (Z.^2) );
exp2dists = [exp2dists sum(dist)];
springconsts=[springconsts k1];
vels = sqrt((U.^2)+(V.^2)+(W.^2));
maxvels=[maxvels max(vels)];
accels=[];
for i = 2:length(vels)
    accels = [accels (vels(i)-vels(i-1))/0.02];
end
maxaccels=[maxaccels max(accels)];
KE=(1/2).*m1.*(vels.^2);
integratedKE=[integratedKE sum(KE)];

subplot(2,3,5)
view(3);  
[m1, k1, l1, Xo1, Yo1, Zo1, Uo1, Vo1, Wo1] = read_input('bungee_data.txt', 11);
[T, X, Y, Z, U, V, W, safety]=bungee(m1, k1, l1, Xo1, Yo1, Zo1, Uo1, Vo1, Wo1);
hold on;
plot3(X,Y,Z, 'Color', 'black')
plot3(X(end), Y(end), Z(end), 'Marker', '.', 'Color', 'r', 'LineWidth' , 10)
surf(x_terrain,y_terrain,h_terrain)
colormap('winter'); shading interp;
grid on; xlabel('x (m)'); ylabel('y (m)'); zlabel('z (m)');
title(['Trial 5 Spring: ', num2str(k1), 'N/m'])
hold off;
dist = 0.02.*sqrt( (U.^2) + (V.^2) + (Z.^2) );
exp2dists = [exp2dists sum(dist)];
springconsts=[springconsts k1];
vels = sqrt((U.^2)+(V.^2)+(W.^2));
maxvels=[maxvels max(vels)];
accels=[];
for i = 2:length(vels)
    accels = [accels (vels(i)-vels(i-1))/0.02];
end
maxaccels=[maxaccels max(accels)];
KE=(1/2).*m1.*(vels.^2);
integratedKE=[integratedKE sum(KE)];

subplot(2,3,6)
view(3);  
[m1, k1, l1, Xo1, Yo1, Zo1, Uo1, Vo1, Wo1] = read_input('bungee_data.txt', 12);
[T, X, Y, Z, U, V, W, safety]=bungee(m1, k1, l1, Xo1, Yo1, Zo1, Uo1, Vo1, Wo1);
hold on;
plot3(X,Y,Z, 'Color', 'black')
plot3(X(end), Y(end), Z(end), 'Marker', '.', 'Color', 'r', 'LineWidth' , 10)
surf(x_terrain,y_terrain,h_terrain)
colormap('winter'); shading interp;
grid on; xlabel('x (m)'); ylabel('y (m)'); zlabel('z (m)');
title(['Trial 6 Spring: ', num2str(k1), 'N/m'])
hold off;
dist = 0.02.*sqrt( (U.^2) + (V.^2) + (Z.^2) );
exp2dists = [exp2dists sum(dist)];
springconsts=[springconsts k1];
vels = sqrt((U.^2)+(V.^2)+(W.^2));
maxvels=[maxvels max(vels)];
accels=[];
for i = 2:length(vels)
    accels = [accels (vels(i)-vels(i-1))/0.02];
end
maxaccels=[maxaccels max(accels)];
KE=(1/2).*m1.*(vels.^2);
integratedKE=[integratedKE sum(KE)];


%Experiment 3
%full screen for best visibility
exp3dists=[];
cordlengths=[];

figure(3 );
sgtitle('Experiment #3') 

subplot(2,3,1)
view(3);  
[m1, k1, l1, Xo1, Yo1, Zo1, Uo1, Vo1, Wo1] = read_input('bungee_data.txt', 13);
[T, X, Y, Z, U, V, W, safety]=bungee(m1, k1, l1, Xo1, Yo1, Zo1, Uo1, Vo1, Wo1);
hold on;
plot3(X,Y,Z, 'Color', 'black')
plot3(X(end), Y(end), Z(end), 'Marker', '.', 'Color', 'r', 'LineWidth' , 10)
surf(x_terrain,y_terrain,h_terrain)
colormap('winter'); shading interp;
grid on; xlabel('x (m)'); ylabel('y (m)'); zlabel('z (m)');
title(['Trial 1 Length: ', num2str(l1), 'm'])
hold off;
dist = 0.02.*sqrt( (U.^2) + (V.^2) + (Z.^2) );
exp3dists = [exp3dists sum(dist)];
cordlengths=[cordlengths l1];
vels = sqrt((U.^2)+(V.^2)+(W.^2));
maxvels=[maxvels max(vels)];
accels=[];
for i = 2:length(vels)
    accels = [accels (vels(i)-vels(i-1))/0.02];
end
maxaccels=[maxaccels max(accels)];
KE=(1/2).*m1.*(vels.^2);
integratedKE=[integratedKE sum(KE)];

subplot(2,3,2)
view(3);  
[m1, k1, l1, Xo1, Yo1, Zo1, Uo1, Vo1, Wo1] = read_input('bungee_data.txt', 14);
[T, X, Y, Z, U, V, W, safety]=bungee(m1, k1, l1, Xo1, Yo1, Zo1, Uo1, Vo1, Wo1);
hold on;
plot3(X,Y,Z, 'Color', 'black')
plot3(X(end), Y(end), Z(end), 'Marker', '.', 'Color', 'r', 'LineWidth' , 10)
surf(x_terrain,y_terrain,h_terrain)
colormap('winter'); shading interp;
grid on; xlabel('x (m)'); ylabel('y (m)'); zlabel('z (m)');
title(['Trial 2 Length: ', num2str(l1), 'm'])
hold off;
dist = 0.02.*sqrt( (U.^2) + (V.^2) + (Z.^2) );
exp3dists = [exp3dists sum(dist)];
cordlengths=[cordlengths l1];
vels = sqrt((U.^2)+(V.^2)+(W.^2));
maxvels=[maxvels max(vels)];
accels=[];
for i = 2:length(vels)
    accels = [accels (vels(i)-vels(i-1))/0.02];
end
maxaccels=[maxaccels max(accels)];
KE=(1/2).*m1.*(vels.^2);
integratedKE=[integratedKE sum(KE)];

subplot(2,3,3)
view(3);  
[m1, k1, l1, Xo1, Yo1, Zo1, Uo1, Vo1, Wo1] = read_input('bungee_data.txt', 15);
[T, X, Y, Z, U, V, W, safety]=bungee(m1, k1, l1, Xo1, Yo1, Zo1, Uo1, Vo1, Wo1);
hold on;
plot3(X,Y,Z, 'Color', 'black')
plot3(X(end), Y(end), Z(end), 'Marker', '.', 'Color', 'r', 'LineWidth' , 10)
surf(x_terrain,y_terrain,h_terrain)
colormap('winter'); shading interp;
grid on; xlabel('x (m)'); ylabel('y (m)'); zlabel('z (m)');
title(['Trial 3 Length: ', num2str(l1), 'm'])
hold off;
dist = 0.02.*sqrt( (U.^2) + (V.^2) + (Z.^2) );
exp3dists = [exp3dists sum(dist)];
cordlengths=[cordlengths l1];
vels = sqrt((U.^2)+(V.^2)+(W.^2));
maxvels=[maxvels max(vels)];
accels=[];
for i = 2:length(vels)
    accels = [accels (vels(i)-vels(i-1))/0.02];
end
maxaccels=[maxaccels max(accels)];
KE=(1/2).*m1.*(vels.^2);
integratedKE=[integratedKE sum(KE)];

subplot(2,3,4)
view(3);  
[m1, k1, l1, Xo1, Yo1, Zo1, Uo1, Vo1, Wo1] = read_input('bungee_data.txt', 16);
[T, X, Y, Z, U, V, W, safety]=bungee(m1, k1, l1, Xo1, Yo1, Zo1, Uo1, Vo1, Wo1);
hold on;
plot3(X,Y,Z, 'Color', 'black')
plot3(X(end), Y(end), Z(end), 'Marker', '.', 'Color', 'r', 'LineWidth' , 10)
surf(x_terrain,y_terrain,h_terrain)
colormap('winter'); shading interp;
grid on; xlabel('x (m)'); ylabel('y (m)'); zlabel('z (m)');
title(['Trial 4 Length: ', num2str(l1), 'm'])
hold off;
dist = 0.02.*sqrt( (U.^2) + (V.^2) + (Z.^2) );
exp3dists = [exp3dists sum(dist)];
cordlengths=[cordlengths l1];
vels = sqrt((U.^2)+(V.^2)+(W.^2));
maxvels=[maxvels max(vels)];
accels=[];
for i = 2:length(vels)
    accels = [accels (vels(i)-vels(i-1))/0.02];
end
maxaccels=[maxaccels max(accels)];
KE=(1/2).*m1.*(vels.^2);
integratedKE=[integratedKE sum(KE)];

subplot(2,3,5)
view(3);  
[m1, k1, l1, Xo1, Yo1, Zo1, Uo1, Vo1, Wo1] = read_input('bungee_data.txt', 17);
[T, X, Y, Z, U, V, W, safety]=bungee(m1, k1, l1, Xo1, Yo1, Zo1, Uo1, Vo1, Wo1);
hold on;
plot3(X,Y,Z, 'Color', 'black')
plot3(X(end), Y(end), Z(end), 'Marker', '.', 'Color', 'r', 'LineWidth' , 10)
surf(x_terrain,y_terrain,h_terrain)
colormap('winter'); shading interp;
grid on; xlabel('x (m)'); ylabel('y (m)'); zlabel('z (m)');
title(['Trial 5 Length: ', num2str(l1), 'm'])
hold off;
dist = 0.02.*sqrt( (U.^2) + (V.^2) + (Z.^2) );
exp3dists = [exp3dists sum(dist)];
cordlengths=[cordlengths l1];
vels = sqrt((U.^2)+(V.^2)+(W.^2));
maxvels=[maxvels max(vels)];
accels=[];
for i = 2:length(vels)
    accels = [accels (vels(i)-vels(i-1))/0.02];
end
maxaccels=[maxaccels max(accels)];
KE=(1/2).*m1.*(vels.^2);
integratedKE=[integratedKE sum(KE)];

subplot(2,3,6)
view(3);  
[m1, k1, l1, Xo1, Yo1, Zo1, Uo1, Vo1, Wo1] = read_input('bungee_data.txt', 18);
[T, X, Y, Z, U, V, W, safety]=bungee(m1, k1, l1, Xo1, Yo1, Zo1, Uo1, Vo1, Wo1);
hold on;
plot3(X,Y,Z, 'Color', 'black')
plot3(X(end), Y(end), Z(end), 'Marker', '.', 'Color', 'r', 'LineWidth' , 10)
surf(x_terrain,y_terrain,h_terrain)
colormap('winter'); shading interp;
grid on; xlabel('x (m)'); ylabel('y (m)'); zlabel('z (m)');
title(['Trial 6 Length: ', num2str(l1), 'm'])
hold off;
dist = 0.02.*sqrt( (U.^2) + (V.^2) + (Z.^2) );
exp3dists = [exp3dists sum(dist)];
cordlengths=[cordlengths l1];
vels = sqrt((U.^2)+(V.^2)+(W.^2));
maxvels=[maxvels max(vels)];
accels=[];
for i = 2:length(vels)
    accels = [accels (vels(i)-vels(i-1))/0.02];
end
maxaccels=[maxaccels max(accels)];
KE=(1/2).*m1.*(vels.^2);
integratedKE=[integratedKE sum(KE)];


%Plot 4
%max distances calculations 
exp1dists;
exp2dists;
exp3dists;


figure(4);
sgtitle('Max Distances vs Experimental Variables')

subplot(1,3,1);
hold on;
plot(masses,exp1dists, 'Color', 'black', 'LineWidth', 3)
xlabel('Masses (kg)')
ylabel('Max distance (m)')
title('Experiment #1: Mass')
for i = 1:6
    scatter(masses(i),exp1dists(i),'filled','LineWidth', 10)
end
legend('Max Dist', 'Trial 1','Trial 2','Trial 3','Trial 4','Trial 5','Trial 6') 
hold off;

subplot(1,3,2);
hold on;
plot(springconsts,exp2dists, 'Color', 'black', 'LineWidth', 3)
xlabel('Spring Constants (N/m)')
ylabel('Max distance (m)')
title('Experiment #2: Spring Constant')
for i = 1:6
    scatter(springconsts(i),exp2dists(i),'filled','LineWidth', 10)
end
legend('Max Dist', 'Trial 7','Trial 8','Trial 9','Trial 10','Trial 11','Trial 12') 
hold off;

subplot(1,3,3);
hold on;
plot(cordlengths,exp3dists, 'Color', 'black', 'LineWidth', 3)
xlabel('Cord Length (m)')
ylabel('Max distance (m)')
title('Experiment #3: Cord Length')
for i = 1:6
    scatter(cordlengths(i),exp3dists(i),'filled','LineWidth', 10)
end
legend('Max Dist', 'Trial 13','Trial 14','Trial 15','Trial 16','Trial 17','Trial 18', 'Location', 'northwest') 
hold off;


%Task 2
totaldist=[exp1dists exp2dists exp3dists];
expnum=[linspace(1,18,18)];

exp_res=struct('number', expnum, 'max_speed', maxvels, 'max_acceleration', maxaccels, 'integrated_KE', integratedKE, 'travel_distance', totaldist)

%Task 3
fileID=fopen('report.txt','w');
fprintf(fileID, '%10s\n', 'Ethan Wadhwa');
fprintf(fileID, '%10s\n', 'A15778800');
fprintf(fileID, ' %s  %s  %s  %s  %s\n', 'exp number', 'max speed (m/s)', 'max acc (m/s^2)', 'int KE (J s)', 'travel dist (m)');
for i = 1:18
    fprintf(fileID, '%10d %15.7e %15.7e %15.7e %15.7e\n', exp_res.number(i), exp_res.max_speed(i), exp_res.max_acceleration(i), exp_res.integrated_KE(i), exp_res.travel_distance(i) );
end
fclose(fileID);

p1a ='See figure 1'
p1b ='See figure 2'
p1c ='See figure 3'
p1d ='See figure 4'
p2a = exp_res(1)
p2b = [exp_res.max_speed];
p2c = [exp_res.max_acceleration]
p2d = [exp_res.integrated_KE]
p2e = [exp_res.travel_distance]
p3 = evalc('type report.txt')
