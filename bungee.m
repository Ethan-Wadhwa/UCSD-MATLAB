function [T, X, Y, Z, U, V, W, safety] = bungee(m, k, l, Xo, Yo, Zo, Uo, Vo, Wo)
%Bungee function takes several parameters and 
%Inputs: m=mass, k=spring constant, l=cord length, X0,Yo,Zo=initial X,Y,Z
%coordinates, Uo,Vo,Wo=initial X,Y,Z velocities
%Outputs: T=time, X,Y,Z=final coordinates, U,V,W=final velocities,
%safety=safety outcome of experiment (1 if safe, 0 if danger)
Cd=0.1; %coefficient of drag
A=pi; %approx. area of person in flight in m^2
p=1.2; %air density in kg/m^3
g=9.81; %accel. of gravity in m/s^2
t=120; %max time in seconds
deltat=0.02; %step size of time
Xn=Xo; Yn=Yo; Zn=Zo; Un=Uo; Vn=Vo; Wn=Wo;
X=[Xo]; Y=[Yo]; Z=[Zo]; U=[Uo]; V=[Vo]; W=[Wo];
T=[0];
load('terrain.mat')

for n = 1:(t/deltat)
    rn = sqrt( (Xn^2) + (Yn^2) + (Zn^2) );
    Vmagn = sqrt( (Un^2) + (Vn^2) + (Wn^2) );
    Un=Un - ( (k/m)*((rn-l)/rn)*Xn + (Cd*p*A*Vmagn/(2*m)) )*deltat;
    U=[U Un];
    Vn=Vn - ( (k/m)*((rn-l)/rn)*Yn + (Cd*p*A*Vmagn/(2*m)) )*deltat;
    V=[V Vn];
    Wn=Wn - ( (k/m)*((rn-l)/rn)*Zn + (Cd*p*A*Vmagn/(2*m)) + g )*deltat;
    W=[W Wn];
    Xn = Xn + Un*deltat;
    X=[X Xn];
    Yn = Yn + Vn*deltat;
    Y=[Y Yn];
    Zn = Zn + Wn*deltat;
    Z=[Z Zn];
    T=[T n*deltat];
    h = interp2(x_terrain,y_terrain,h_terrain,Xn,Yn);
    if h-1 < Zn && Zn < h+1
        safety = 0;
        break
    else
        safety = 1;
        continue 
    end
end
end