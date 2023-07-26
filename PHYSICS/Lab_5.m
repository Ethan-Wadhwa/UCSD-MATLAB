l=0.05;
X=I.*n*l

dX=dI.*n*l;
errorbarxy(X,F,dX,dF);
model=@(p,X) p(1).*X ;
guess = [0.0159 ]
wnlfit(X, F, dX, dF, model, guess);
title('Magnetic Force of Magnet on Current Loops');
xlabel('Current * Length of coil(s) (A*m)');
ylabel('Force (N)');