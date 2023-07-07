V1 = [0.115 ;0.144776 ; 0.182226; 0.229455; 0.288886; 0.36316; 0.457823]
I1 = [10.1; 10.1; 10.1; 9.92; 9.8; 9.6; 9.44]



dV = 0.001*ones(size(V1));
dI = 0.002*ones(size(I1));

%hold on
%a = plot(V1, I1)
%a.Color = 'b';
%ax =gca
%ax.YAxis.Scale = 'log'
%ax.XAxis.Scale = 'log'
%errorbarxy(V1, I1, dV, dI)
%hold off

help format



