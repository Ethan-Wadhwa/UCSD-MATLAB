clear all; close all; clc; format long
name = 'Ethan Wadhwa';
id = 'A15778800';
hw_num = 'final';
form = 'A';

%% Problem 1: 
load('temperature.dat')
%(a, b) In the year 1995, what was the warmest temperature? In what month(s) did it
%occur? Put the answers in p1a and p1b, respectively. Use 1 for Jan, 2 for Feb, 3 for Mar,
%etc.
maxtempmonths=[];

for i = 1:169
    if temperature(i,1) == 1995
        p1a = max(temperature(i,2:13))
        for n = 2:13
            if max(temperature(i,2:13)) == temperature(i,n)
                maxtempmonths = [maxtempmonths (n-1)];
            end
        end
    end
end
p1b=maxtempmonths

%(c, d) What is the warmest temperature throughout the record (all years)? In what
%year(s) did it occur? Put the answers in p1c and p1d, respectively.
yearlymax=[];
for i = 1:169
    yearlymax = [yearlymax max(temperature(i,2:13))];
end
p1c=max(yearlymax)
p1d=[];
for n = 1:length(yearlymax)
    if yearlymax(n) == max(yearlymax)
        p1d=[p1d temperature(n,1)];
    end
end
p1d
%(e) Between 1995 and 2015 (including these two years), in how many months was the
%temperature warmer than 70?F? Put the answer in p1e.
months=0;
for i = 1:169
    if temperature(i,1) >= 1995
        if temperature(i,1) <=2015
            for n = 2:13
                if temperature(i,n) > 70
                    months = months+1;
                end
            end
        end     
    end
end
p1e=months
%(f) Compute the seasonal average temperature during the summer months (i.e. June,
%July and August) for each year. Put the answer in p1f.
%months 6,7,8
junetemps=[];
julytemps=[];
augtemps=[];
for i = 1:169
    junetemps=[junetemps temperature(i,6)];
    julytemps=[julytemps temperature(i,7)];
    augtemps=[augtemps temperature(i,8)];
end
seasonalavgtemp= (julytemps + junetemps + augtemps )/3;
p1f=seasonalavgtemp

%(g) Create figure 1 to include the following items:
%• a solid black line to show how the summer average temperature changes throughout
%the years.
%• a red filled circle to indicate the year with the highest summer temperature.
%• a blue filled circle to indicate the year with the lowest summer temperature.
%Use marker size of 10. Remember to label the axes and include the legend and title. Set
%p1g = 'See figure 1'.
figure(1)
hold on;
x = temperature(:,1)';
y = seasonalavgtemp;
plot(x,y, 'Color', 'black')
for i = 1:length(seasonalavgtemp)
    if seasonalavgtemp(i) == max(seasonalavgtemp)
        scatter(x(i),y(i), 'filled', 'r', 'LineWidth', 10)
    elseif seasonalavgtemp(i) == min(seasonalavgtemp)
        scatter(x(i),y(i), 'filled', 'b', 'LineWidth', 10)
    end
end
title('Summer Month Average Temperature per Year')
xlabel('Year')
ylabel('Temperature (Farenheit)')
legend('Yearly Avergae', 'Max Temp', 'Min Temp', 'Location', 'northwest')
hold off;
p1g = 'See Figure 1'
%% Problem 2: 
%(a) Use for loop to evaluate the following series and put the answer in p2a.
series1sum=0;
for k = 1:50
    for l = 1:60
        for m = 1:70
            series1sum = series1sum+ (1/((2^k)+(2^l)+(2^m)));
        end
    end
end
p2a=series1sum

%(b, c) The following series can be used to approximate the value of ?:
for k = 1:100
    piapprox=0;
    for n = 0:k
        piapprox=piapprox + 2*((2^n)*(factorial(n)^2))/factorial(2*n + 1);
    end
    if abs(pi-(piapprox)) <= (10^(-7))
        p2b = piapprox
        p2c = k
        break
    end
end

%(d) Consider the following two-dimensional function:
%where x = [-12:0.1:12] and y = [-10:0.1:10].
%Create figure 2 to include the following items:
%• surface plot of f.
%• red filled circles to mark local maxima. A local maximum is defined as the point where
%f(x,y) is greater than or equal to the surrounding neighboring points. Ignore the local
%maxima at the edges of the x-y domain.
%Use marker size of 5. Remember to label the axes and include the legend and title. Set
%view(3) and p2d = 'See figure 2'.
x = [-12:0.1:12];
y = [-10:0.1:10];
fxy=[zeros(length(x),length(y))];
for i = 1:length(x)
    for j = 1:length(y)
        fxy(i,j)=exp(-1*((cos(x(i)/2)+sin(y(j)/3))^2) );
    end
end
localmaxima=imregionalmax(fxy);
[localmax_x localmax_y] = find(localmaxima);
localx = x(localmax_x);
localy = y(localmax_y);
figure(2)
view(3)
hold on;
surf(y,x,fxy)
scatter3(localy,localx,fxy(localmaxima), 'filled', 'red', 'LineWidth', 5)
title('Surf Plot and Local Maxima of Problem 2 part D function')
xlabel('y')
ylabel('x')
legend('Surface Plot', 'Local Maxima')
hold off;
p2d = 'See Figure 2'
%% Problem 3: 
load('survey.mat')
%(a, b) Are the first student and last student on the survey both Freshman? Put the
%answer in p3a. How about the 17th and the 147th students? Put the answer in p3b.
if extractBetween(string(survey(1)), 1, 10) == '  Freshman'
    if extractBetween(string(survey(1)), 1, 10) == extractBetween(string(survey(end)), 1, 10)
        p3a=1
    else
        p3a=0
    end
else
    p3a =0
end
if extractBetween(string(survey(17)), 1, 10) == '  Freshman'
    if extractBetween(string(survey(17)), 1, 10) == extractBetween(string(survey(147)), 1, 10)
        p3b=1
    else
        p3b=0
    end
else
    p3b = 0
end

%(c) How many students thought the midterm was Difficult? Put the answer in p3c.
diffstudents=0;
for i = 1:155
    temp = string(survey(i));
    if extractBetween(temp, 51, 60) == ' Difficult'
        diffstudents=diffstudents+1;
    end
end
p3c = diffstudents

%(d) How many Freshman thought the midterm was Difficult? Put the answer in p3d.
diffFreshies=0;
for i = 1:155
    temp = string(survey(i));
    if extractBetween(temp, 51, 60) == ' Difficult'
        if extractBetween(temp, 1, 10) == '  Freshman'
            diffFreshies=diffFreshies+1;
        end
    end
end
p3d = diffFreshies

%(e) Create figure 3. In the figure, create a bar plot to show the numbers of Freshman,
%Sophomore, Junior and Senior in the class. Also include a column for the number of
%students who did not answer this questions (e.g. Null). Remember to label the axes and
%include the title. Set p3e = 'See figure 3'.
Fresh=0;Soph=0;Junior=0;Senior=0; Null=0;
for i = 1:155
    temp = string(survey(i));
    if extractBetween(temp, 1, 10) == '  Freshman'
        Fresh=Fresh+1;
    elseif extractBetween(temp, 1, 10) == ' Sophomore'
        Soph=Soph+1;
    elseif extractBetween(temp, 1, 10) == '    Junior'
        Junior=Junior+1;
    elseif extractBetween(temp, 1, 10) == '    Senior'
        Senior = Senior + 1;
    else
        Null=Null+1;
    end
end
class = categorical({'Freshman', 'Sophomores', 'Juniors', 'Seniors', 'Did Not Answer'});
class = reordercats(class,{'Freshman', 'Sophomores', 'Juniors', 'Seniors', 'Did Not Answer'});
students=[Fresh Soph Junior Senior Null];
figure(3);
hold on;
bar(class,students)
title('Students in Each Year')
xlabel('Year')
ylabel('# of Students')
hold off;
p3e = 'See figure 3'

%% Problem 4: 
load('SDweather.mat')
%(a, b) What was the coldest temperature in the year 1980? In what month(s) of that
%year did it occur? Put the answers in p4a and p4b, respectively.
for i = 1:169
    if SDweather(i).year == 1980
        temps1980 = SDweather(i).temperature;
    end
end
p4a=min(temps1980)
p4b=[];
for i = 1:length(temps1980)
    if temps1980(i) == min(temps1980)
        p4b=[p4b i];
    end
end
p4b
%(c, d) Throughout the record, what was the highest monthly average rainfall? In what
%year(s) did it occur? Put the answers in p4c and p4d, respectively.
for i = 1:169
    rainmaxes = max(SDweather(i).rainfall);
end
maxrain = max(rainmaxes);
yearofmaxrain=[];
for i = 1:169
    monthlyrain = SDweather(i).rainfall;
    for n = 1:12
        if monthlyrain(n) == maxrain
            yearofmaxrain = [yearofmaxrain SDweather(i).year];
        end
    end
end
p4c = maxrain
p4d = yearofmaxrain

%(e) Create figure 4 to include the following items:
%• Use a bar plot to show how the annual average rainfall changes over the years.
%• Use red and blue filled circles to mark the years with the most and least rainfall,
%respectively.
%Use marker size of 10. Remember to label the axes and include the legend and title. Set
%p4e = 'See figure 4'

years = [SDweather.year];
annualrainfall = [SDweather.annual_rainfall_avg];

figure(4)
hold on;
bar(years, annualrainfall)
for i = 1:length(annualrainfall)
    if annualrainfall(i) == max(annualrainfall)
        scatter(years(i),annualrainfall(i), 'filled', 'r', 'LineWidth', 10)
    elseif annualrainfall(i) == min(annualrainfall)
        scatter(years(i),annualrainfall(i), 'filled', 'b', 'LineWidth', 10)
    end
end
title('Annual Rainfall Average in San Diego between 1852 & 2020')
xlabel('Year')
ylabel('Rainfall (inches)')
legend('Anual Avg Rain', 'Maximum Avg Rain', 'Minimum Avg Rain', 'Location', 'northeast')
hold off;
p4e = 'See figure 4'

%% Problem 5: 
%Use the function spring mass damper to perform six numerical experiments with c =
%[0, 0.5, 1, 1.5, 2, 3] N·s/m. Use the experiment results in the following exercises.
%(a) Create figure 5 to plot the six trajectories (i.e. displacement versus time) corre-
%sponding to the different values of c’s. Use solid lines with different colors to mark the
%trajectories. Remember to label the axes and include the legend and title. Set p5a = 'See
%figure 5'.
C=[0, 0.5, 1, 1.5, 2 ,3];
[T1, X1, V1] = spring_mass_damper(C(1));
[T2, X2, V2] = spring_mass_damper(C(2));
[T3, X3, V3] = spring_mass_damper(C(3));
[T4, X4, V4] = spring_mass_damper(C(4));
[T5, X5, V5] = spring_mass_damper(C(5));
[T6, X6, V6] = spring_mass_damper(C(6));

figure(5)
hold on;
plot(T1,X1,'Color', 'red', 'LineWidth', 1)
plot(T2,X2,'Color','green', 'LineWidth', 1)
plot(T3,X3,'Color', 'blue', 'LineWidth', 1)
plot(T4,X4,'Color', 'black', 'LineWidth', 1)
plot(T5,X5,'Color', 'yellow',  'LineWidth', 1)
plot(T6,X6,'Color', 'cyan',  'LineWidth', 1)
title('Displeacement vs Time for Spring Mass Damper System')
xlabel('Time (s)')
ylabel('Displacement(m)')
legend('C=0 N·s/m', 'C=0.5 N·s/m', 'C=1 N·s/m' , 'C=1.5 N·s/m', 'C=2 N·s/m', 'C=3 N·s/m')
hold off;


%(b) Compute the frequency ? (in rad s?1) of the system in each of the experiments. Here,
%? = 2?/tp where tp is the time period between the first two local maxima of the displacement
%X. Put the answer in a 6-element vector p5b.
Frequencies=[];
for n = 1:6
    if n == 1
        X = X1;
    elseif n == 2
        X = X2;
    elseif n == 3
        X = X3;
    elseif n == 4
        X = X4;
    elseif n == 5
        X = X5;
    elseif n == 6
        X = X6;
    end
    Xmaxind=[];
    for i = 1:(length(X)-1)
        if i > 1 
            if X(i) > X(i+1) && X(i) > X(i-1)
                Xmaxind=[Xmaxind i];
            end
        end
    end
    freqX = 2*pi/( T1(Xmaxind(2)) - T1(Xmaxind(1)) );
    Frequencies = [Frequencies freqX];
end

p5b = Frequencies
