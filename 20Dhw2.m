f=@(t,y) .4*(41-y)
slopefield(f, [0,20], [-10,45], 20)
hold on
drawode(f, [0,20], 0, -6)
hold off