%%MAE125D4
clear all;
clc;
close all;


%%Part 1 &all in Lux
feetfromwnd=0:1:10;
feetfromwall=0:1:8;
wind_to_wall_day=[4207 2401 617 335 244 157 142 113 109 94 63];
wall_to_wall_day=[89 127 208 276 323 284 220 220 218];
wind_to_wall_evening=[1338 657 137 97 63 52 40 29 21 19 14];
wall_to_wall_evening=[15 24 47 67 81 63 61 61 61];
wind_to_wall_night=[19 26 42 31 18 8.3 13 13 15 4.4 5.8];
wall_to_wall_night=[3.5 4.7 6.9 8.7 9.5 12 16 22 20];
figure(1)
subplot(1,2,1)
hold on;
plot(feetfromwnd,wind_to_wall_day)
plot(feetfromwnd,wind_to_wall_evening)
plot(feetfromwnd,wind_to_wall_night)
set(gca, 'YScale', 'log')
title('Luminosity vs Distance from Window')
xlabel('Distance (ft)')
ylabel('Luminosity (Lux)')
legend('Day', 'Evening', 'Night (Artificial)')
hold off;

subplot(1,2,2)
hold on;
plot(feetfromwall,wall_to_wall_day)
plot(feetfromwall,wall_to_wall_evening)
plot(feetfromwall,wall_to_wall_night)
set(gca, 'YScale', 'log')
title('Luminosity vs Distance from Left Wall')
xlabel('Distance from Left (ft)')
ylabel('Luminosity (Lux)')
legend('Day', 'Evening', 'Night (Artificial)')
hold off;


%%Part 2 -all in lux- 
%reflexivity 
%Wall 1: 13 @, 8.6 away, Wall 2: 4.2@, 2.7 away, Wall 3: 2.5@, 1.3 away. Wall 4: 2.6@, 1.7 away
%floor: 6.7@, 2.7 away, ceiling 2.1 @, 1.5 away
%transmisivity: 113 outside, 84 inside


%%Part 3

time= 0:(1/6):24 ;
measuredtemp= [ 16.757702626
15.2059274049
14.9626279753
14.987138528
14.7908784468
14.7171764275
15.036140989
14.69259628
14.6680096986
14.5449796564
14.6188171629
14.4710832725
14.4464379761
14.3477904613
14.3477904613
14.2984266503
14.2490359409
14.1007009428
14.0759544963
14.0759544963
14.2984266503
14.1501732355
14.2737346671
14.1501732355
14.0264409093
14.051201158
14.051201158
14.4710832725
14.2490359409
14.3477904613
14.2737346671
14.1501732355
14.1007009428
14.051201158
14.1007009428
14.0264409093
14.1254405164
14.1501732355
13.9521185128
14.0016737314
13.9521185128
14.0016737314
13.9521185128
13.877733245
14.0264409093
13.9521185128
13.9273304344
13.9025353515
13.7800063124
13.877733245
13.803284595
13.7054736931
13.6806151625
13.6806151625
13.6059963288
13.6308764996
13.6308764996
13.6308764996
13.6806151625
13.6806151625
13.7800063124
13.8281078858
13.8529240961
13.8529240961
13.9025353515
14.2984266503
14.0759544963
14.1007009428
14.0759544963
14.174899119
14.2243304531
14.2243304531
14.3231119089
14.3477904613
14.3477904613
14.4464379761
14.4464379761
14.6188171629
14.5695986763
14.5695986763
14.6188171629
14.7417501593
14.9135881376
15.036140989
15.0851187081
15.1325424112
15.1570101692
15.2059274049
15.3525341156
15.3525341156
15.523304307
15.4501524718
15.5720429613
15.523304307
15.5720429613
15.7424461992
15.7667666258
15.8153904769
15.7667666258
15.7910813795
15.7910813795
15.8396939348
15.8396939348
15.8396939348
15.9125706378
16.1066645095
16.0824219924
16.0824219924
16.2035803293
16.2035803293
16.4213280126
16.443985497
16.5647483215
16.757702626
16.8299774133
16.9743934508
17.3106884947
17.4545333652
17.478491459
17.3826316583
17.3346741809
17.2866981566
17.2627031511
17.1426575788
16.9503363715
16.733601034
16.6130173921
16.4213280126
16.2277958036
16.1066645095
15.9611272135
15.9125706378
15.8396939348
15.7181200829
15.6451074282
15.4745422867
15.4501524718
15.3769476034
15.3036892398
15.2303769172
15.1570101692
15.0851187081
14.9381111844
14.9626279753
14.8154330384] ;

measuredtemp = (9/5)*measuredtemp + 32; %converted to farenheit
hourlytimes= 0:1:24;
outsideweather = [57 54 54 53 52 51 50 48 48 49 48 50 53 57 61 61 62 63 63 63 61 60 58 57 56 ];
figure(3)
hold on;
plot(time,measuredtemp)
plot(hourlytimes,outsideweather)
legend( 'Inside Temp', 'Outdoor Temp', 'Location', 'southeast')
title('MySpace Measured 24hr Temp data, 03/08 8pm-03/09 8pm')
xlabel('Time (hr)')
ylabel('Temperature (F)')
hold off;

