%2D Kinematic equations

%for Horizantal Direction
%deltx=vx*t

%for Vertical Direction
%vy = v0y + ay*t
%delty = (vy + v0y) * .5 * t
%delty = (v0y * t) + (.5 * ay * (t^2))
%vy^2=(v0y^2) + (2 * ay * delty)
%For the purpose of this problem, ay is gravity 

ay= -9.81;
%Takes in the basic information given in a 2d kinematic problem
velocityvector=input('enter the velocity vector without units');
angle=input('enter the angle');
inity=input('initial height');
vx = cosd(angle)*velocityvector;
v0y = sind(angle)*velocityvector;
%calculates the vertical velocity until it reaches initial y
v1y=-v0y;
t1= (v1y-v0y)/ay;
%calculates the rest of the balls movement 
%t is total time, vy is final y velocity
%v = final directional velocity
vy=-sqrt((v1y^2) + (2 * ay * -inity))
v=-sqrt((vy^2)+vx^2)
t= (vy - v0y)/ay
%for graphing/plotting
%x is the vector for x coordinates
x=[];
inc=t/15;
for n = 0:15
    x = [x , (n*inc*vx)];
end
y=[];
for n = 0:15
    delty=(v0y * (inc*n)) + (.5 * ay * ((inc*n)^2));
    y = [y, inity + delty];
end
tt=0:inc:t;
%delty = (vy + v0y) * .5 * t
figure(1)
plot(tt,y)
title('Change in y direction over time')
xlabel('Time')
ylabel('Distance moved in y (M)')

%figure(2)
%plot(tt,x)
%title('Change in x direction over time')
%xlabel('Time')
%ylabel('Distance moved in x')

%figure(3)
%plot(x,y)
%title('Change in Y over X')
%xlabel('Distance')
%ylabel('Distance')