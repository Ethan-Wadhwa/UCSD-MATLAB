g = @(t,y) sin(t)
h = 0.1;
[t,y] = Euler(h, 0, 3, 3, g);
[t,y]