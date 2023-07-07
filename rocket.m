function [T, Z, W] = rocket(Tf, dt)
%Inputs of final time (Tf) and step size (dt)
%Outputs of T: total time, Z: final altitude (m), and W: final velocity
%(m/s)
%Relies on subfunctions gravity & thrust

Z = 0;
m = 10; %given in kg
W = 0;
T=Tf;
steps = Tf/dt;
for n = 0:steps
    t = dt*n;
    g = gravity(W);
    Th = thrust(t);
    W = W + ( (Th/m) - g )*dt;
    Z = Z + W*dt;
end
end
%%
function Th = thrust(t)
%input t: time
%output Th: upward thrust (units of N)
if t >= 0 && t < 2
    Th = 670;
elseif t >= 2 && t < 4
    Th = 1360;
else
    Th = 0;
end
end

function g = gravity(z)
%input z: altitude
%output g: gravity value at altitude z (units of m/s/s)
if z >= 0 && z <= 10000
    g = 9.81 * (1- (z/1000)^3);
elseif z > 10000
    g = 0;
else
    g = 9.81;
end
end