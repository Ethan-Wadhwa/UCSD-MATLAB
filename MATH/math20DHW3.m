g = @(x,y) sin(x)
[x,y] = ode45(g, [0, 10], 1)
h = @(x) -cos(x) + 2;
[x, y, h(x), abs(y - h(x))]
[x, z] = Euler(0.25, 0, 1, 10, g);
[y, z, h(x), abs(y - h(x)), abs(z - h(x))]