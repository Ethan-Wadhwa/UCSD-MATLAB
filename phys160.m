L = [(8.6743*10^-4); (5.6429*10^-3); (1.3271*10^-2); (2.2711*10^-2); (3.9096*10^-2); 0.14387; 0.54597; 1.0161; 1.8352; 2.2798; 24.9443]
T = [ 2706, 3297, 3548, 3661, 3782, 4347, 4390, 5780, 6012, 6246, 4716]

%scatter(T,L)
%ylim([(10^-4) (10^1.5)])
%ax =gca
%ax.YAxis.Scale = 'log'
%xlabel('Temperature (Kelvin)')
%ylabel('(Luminosity (Solar Luminosities)')

help format