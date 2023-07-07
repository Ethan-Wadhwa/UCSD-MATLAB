function [T, X, V] = spring_mass_damper(c)
%Inputs: c - frictional damping factor
%Outputs: T - Final time, X - Final X position, V - final velocity
%Assumes spring constant, mass, initial velocity, and initial X position
%Uses Euler-Cramer Method to calculate each step
k=40; %N/m
m=0.1; %kg
Vo = 10; %m/s
Xo = 0.1; %m
deltat=0.001; %s
totalT=2; %s
T=[0:deltat:totalT];
Vn=Vo;
V=[Vn];
Xn=Xo;
X=[Xn];
for i = 2:length(T)
    Vn = Vn - (((k/m)*Xn + (c/m)*Vn)*deltat);
    V=[V Vn];
    Xn = Xn + Vn*deltat;
    X = [X Xn];
end
end