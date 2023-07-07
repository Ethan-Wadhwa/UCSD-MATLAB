R=[106.1; 149.5; 323.6; 552; 991; 9950]
dR=[0.6; 0.6; 0.1; 1; 1; 10]
tau=[0.03632; 0.05071; 0.11068; 0.18745; 0.33995; 3.3487]
dtau=[0.000332; 0.000383; 0.000752; 0.007721; 0.00195; 0.008625]




model = @(p, R) p(1).* R ;
guess=[0.000303];
wnlfit(R, tau, dR, dtau, model, guess);
title('Tau as a function of Resistance');
xlabel('Resistance (Ohms)');
ylabel('Tau (Seconds)');
