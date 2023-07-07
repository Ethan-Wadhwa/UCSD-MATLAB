g=@(t,y) [y(1)*(1-y(2));y(2)*(y(1)-1)]
phaseplane(g, [-1,5], [-1,5], 25)
hold on
drawphase(g, 75, 4, 1)
drawphase(g, 75, 3, 5)
drawphase(g, 75, 2, 1)
hold off