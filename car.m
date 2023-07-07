function [T,X,U] = car(Tf,dt)
%Inputs- Tf: travelling time, dt: step size
%Outputs- T: final time U: final velocity X: final distance
T=Tf;
Tsteps = Tf/dt;
%(5*(sech(Tn/20)^2)*(tanh(Tn/20))*dt;
U=0;
X=0;
for n = 1:Tsteps
    Tn = dt*n;
    Un = (5*(sech(Tn/20)^2)*tanh(Tn/20)*dt);
    U = U + Un;
    X = X + Un*dt;
end
end

