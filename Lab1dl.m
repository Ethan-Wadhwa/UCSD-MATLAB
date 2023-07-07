V = [-0.404; -0.526; -1.1088; -1.3385; -1.6853 ]
dV = [0.0114; 0.0094; 0.0043; 0.0043; 0.0039]
F = [5.2; 5.5; 6.88; 7.41; 8.23]
dF= [ 0.4536; 0.5071; 0.799; 0.928; 1.1467]

errorbarxy(F, V, dF, dV)
model=@(p,F) p(1).*F +p(2)
guess = [-0.43 1.84]
wnlfit(F, V, dF, dV, model, guess);
xlabel('Frequency (10^1^4 Hertz)')
ylabel('Voltage (eV)')