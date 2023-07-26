%%Homework 4

clear all;   % This clears all workspaces
close all;   % This closes all figures 
clc;         % This clears the command window
format long; 

name = 'Ethan Wadhwa';
id = 'A15778800';
hw_num = 4;

%Problem 1: Create the following matrix A:
%A =
%[[ln(1/2) ln(1/3) ln(1/4) ln(1/5)]
%[ln(1/6) ln(1/7) ln(1/8) ln(1/9)]
%[ln(1/10) ln(1/11) ln(1/12) ln(1/13)]]
A=[2 3 4 5; 6 7 8 9; 10 11 12 13];
A=log(1./A);

%a) Write the last column of matrix A into string p1a using %f with 9 characters including
%6 decimal places for each element. The string must show a column vector.
p1a = sprintf('%3.6f \n', A(:,4))

%b) Write the last row of matrix A into string p1b using %f with 7 characters including
%4 decimal places for each element. The string must show a row vector.
p1b = sprintf(' %3.4f ', A(3,:))

%c) Write matrix A into string p1c using %f with 10 characters including 7 decimal places.
p1c = sprintf(' %3.7f %3.7f %3.7f %3.7f \n', A)

%d) Write matrix A into string p1d using %e with 10 characters including 7 decimal places.
p1d = sprintf(' %3.7e %3.7e %3.7e %3.7e \n', A)


%Problem 2:
%Download the file temperature.dat from CANVAS. The file includes the San Diego
%monthly-averaged temperature data (in Farenheit) from 1852 to 2020. The data is comma
%delimited and the columns represent the following: Year, Jan, Feb, Mar, Apr, May, Jun,
%Jul, Aug, Sep, Oct, Nov, Dec, Annual mean. Load this data file into MATLAB and perform
%the following exercises. Provide the code needed to carry out the exercises. Do not obtain
%answers by inspection.    
tempsfile = 'temperature.dat';

temps = importdata(tempsfile);
%Consider the monthly average temperature (i.e., columns 2 to 13) in parts (a through g).
%(a,b) Identify the month and the year when the monthly temperature is warmest on the
%record. Put the month in p2a and the year in p2b. For the month, use 1 for Jan, 2 for Feb,
%etc.
for i = 2:13
    for j = 1:length(temps(:,1))
        if max(temps(j,i))==max(max(temps(:,2:13)))
            p2a=i-1
            p2b=temps(j,1)
        end
    end
end

%(c) Between 1900 and 2000, how many times had the monthly temperature been warmer
%than 75?? Put the answer in p2c.
warm75count = 0;
row1900 = find(temps(:,1)==1900);    %finds row number where year is 1900
row2000 = find(temps(:,1)==2000);    %finds row number where year is 2000
for k = row1900:row2000              %iterates through desired rows
    for i = 2:13                     %iterates through all month columns
        if temps(k,i) > 75           %searches for values greater than 75 in this range
            warm75count = warm75count+1;     %adds 1 to the count for each instance above 75 in this range
        end
    end
end
p2c = warm75count
    
%(d) During the summer (e.g. Jun, Jul and Aug) between 1900 and 2000, how many times
%had the monthly temperature been warmer than 75?? Put the answer in p2d.
warm75countjja = 0;
%jun=6,jul=7,aug=8 but add one for the actual index in the matrix
for k = row1900:row2000
   for i = 7:9
       if temps(k,i) > 75
           warm75countjja=warm75countjja+1;
       end
   end
end
p2d=warm75countjja

%(e) Compute the annual cycle of the temperature by taking the average over the years
%for each of the months. Create figure 1 to show the cycle with a bar graph. The x-axis
%shows the months (1 through 12) while the y-axis shows the temperature averaged over the
%years for the corresponding month. Set p2e='See figure 1'. Be sure to give the figure a
%title and label the axes.
avgtemps = [];
for i = 2:13
    avgtemps= [avgtemps mean(temps(:,i))];
end
figure(1);
bar(avgtemps);
xlabel('Months');
ylabel('Average Temperature (Degrees)');
title('Average Temp per Month');
p2e='See figure 1'

%(f) From figure 1, in what month of the cycle is the temperature warmest? Give the
%answer in a string p2f = 'In general, the temperature peaks in ...'.
p2f = 'The data suggests the temperature is on average warmest in August (month 8)'

%(g) Write the annual cycle of the temperature into a file named annual cycle.dat using
%ASCII format. The file should include 12 rows and 2 columns. The first column includes the
%months (1 through 12) and the second column includes the corresponding temperature. Set
%p2g= evalc('type(''annual cycle.dat'')'). Note: Your homework script must produce
%the file during execution. If you include the file in your submission folder, the file will be
%removed before being graded.
data = [linspace(1,12,12);avgtemps].';
save 'annual cycle.dat' data -ascii ;
p2g= evalc('type(''annual cycle.dat'')')

%Now compute the annual mean temperature (i.e., averaged over the twelve months).
%Create figure 2 to show how the annual mean temperature varies over the years. Set
%p2h='See figure 2'. The figure should include the following:
%•Use black solid line with a line width of 2 to show the annual mean temperature.
%•Use red solid circle symbols to mark the years in which the temperature is warmer
%than 65?.
%•Use blue solid diamond symbols to mark the years in which the temperature is cooler
%than 60?.
%•Use red solid line with a line width of 4 to mark the two consecutive years over which
%the temperature increases the fastest.
%•Use blue solid line with a line width of 4 to mark the two consecutive years over which
%the temperature decreases the fastest.
%•Give the figure a title and a legend, and label the axes.

yearlytempavg = [];
years = temps(:,1);
for i = 1:length(temps(:,1))
    yearlytempavg= [yearlytempavg; mean(temps(i,2:13))];
end


figure(2);
hold on;
plot(years,yearlytempavg, 'Color', 'Black', 'LineWidth', 2, 'DisplayName', 'Plot of Data')
plot(years(169),yearlytempavg(169), 'o', 'Color', 'r', 'MarkerFaceColor', 'r', 'DisplayName', 'Years above 65 deg')
plot(years(82),yearlytempavg(82), 'Diamond', 'Color', 'b', 'MarkerFaceColor', 'b', 'DisplayName', 'Year below 60 deg')

for i = 1:length(yearlytempavg)
    if yearlytempavg(i) > 65
        plot(years(i),yearlytempavg(i), 'o', 'Color', 'r', 'MarkerFaceColor', 'r')
    elseif yearlytempavg(i) < 60
        plot(years(i),yearlytempavg(i), 'Diamond', 'Color', 'b', 'MarkerFaceColor', 'b')
    end
end

xlabel('Year');
ylabel('Average Temperature (Degrees)');
title('Temperature Average per Year');
legend('Data Plot', 'Years above 65 deg', 'Years below 60 deg')
legend('Location', 'NorthWest')
hold off;
p2h='See figure 2'

%(i) In figure 2, does the temperature in San Diego get warmer or cooler over the years?
%Give the answer in a string p2i = 'In general, the temperature ...'.

p2i = 'This dataset suggests that over time generally the temperature in San Diego is getting warmer.'



%Problem 3: Write a function lottery.m that checks for winning tickets and returns win-
%ning dollar amount. The function should have the following declaration: function amount
%= lottery(ticket) where ticket is an input vector with 6 lottery numbers and the out-
%put amount denotes the winning amount. Download the file winning number.dat from
%CANVAS. The file includes 6 winning numbers. Load the file inside function lottery, i.e.
%load('winning number.dat'), and use it to determine the winning dollar amount which
%depends on the matching between the numbers on the ticket and the winning numbers. Use
%the following formula:
%•No match: amount = 0
%•1 matching numbers: amount = 10
%•2 matching numbers: amount = 100
%•3 matching numbers: amount = 1,000
%•4 matching numbers: amount = 10,000
%•5 matching numbers: amount = 1,000,000
%•6 matching numbers: amount = 100,000,000
%Use if statement and function intersect to check for matching numbers. Remember to
%include a description for the function. Note that a different winning number.dat file will
%be used during grading.

%(a) Set p3a = evalc('help lottery').
p3a = evalc('help lottery')

%(b) Set p3b = lottery([2, 3, 4, 5, 6, 7]).
p3b = lottery([2, 3, 4, 5, 6, 7])

%(c) Set p3c = lottery([12, 23, 24, 34, 50, 61]).
p3c = lottery([12, 23, 24, 34, 50, 61])

%(d) Set p3d = lottery([22, 33, 44, 50, 51, 61]).
p3d = lottery([22, 33, 44, 50, 51, 61])

%(e) Set p3e = lottery([32, 43, 54, 44, 51, 61]).
p3e = lottery([32, 43, 54, 44, 51, 61])

%(f) Set p3f = lottery([42, 53, 34, 44, 51, 61]).
p3f = lottery([42, 53, 34, 44, 51, 61])

%(g) Set p3g = lottery([42, 23, 34, 44, 51, 61]).
p3g = lottery([42, 23, 34, 44, 51, 61])

%(h) Set p3h = lottery([12, 23, 34, 44, 51, 61]).
p3h = lottery([12, 23, 34, 44, 51, 61])


%Problem 4: Write a function piecewise2d.m to compute the following 2-dimensional
%function f(x,y):
%Set f to be zero for other conditions of x and y. Function piecewise2d.m should have the
%function declaration: function f = piecewise2d(x,y) where x and y are number inputs
%and f is a number output. Remember to include a description for the function. Use if elseif
%statements.

%(a) Set p4a=evalc('help piecewise2d').
p4a=evalc('help piecewise2d')

%(b) Set p4b=piecewise2d(1, 1).
p4b=piecewise2d(1, 1)

%(c) Set p4c=piecewise2d(1, -1).
p4c=piecewise2d(1, -1)

%(d) Set p4d=piecewise2d(-1, 1).
p4d=piecewise2d(-1, 1)

%(e) Set p4e=piecewise2d(-1, -1).
p4e=piecewise2d(-1, -1)

%(f) Set p4f=piecewise2d(0, 0).
p4f=piecewise2d(0, 0)

%(g) Set p4g=piecewise2d(0, 1).
p4g=piecewise2d(0, 1)

%(h) Set p4h=piecewise2d(0, -1).
p4h=piecewise2d(0, -1)

%(i) Set p4i=piecewise2d(1, 0).
p4i=piecewise2d(1, 0)

%(j) Set p4j=piecewise2d(-1, 0).
p4j=piecewise2d(-1, 0)

%Problem 5: Write a function rgb color.m to display color (red, green, blue, yellow, ma-
%genta, cyan, white) as a result of mixing primary colors (red, green, blue). The function
%should have the following declaration: function color = rgb color(rgb) where the input
%rgb is a 3-element vector having value of either 0 or 1 to denote the three primary colors (red,
%green, blue) respectively. The output color is a string denoting the color of the mixture.
%See http://en.wikipedia.org/wiki/Additive_color for information on how colors
%are mixed. For example, when rgb = [1 0 0], the resulting color is red. When rgb = [1
%1 1], the resulting color is white. If the input rgb is not a valid input, the output color
%should be the string 'Invalid input'. Remember to give the function a description. Use
%nested if statements.

%(a) Set p5a=evalc('help rgb color').
p5a=evalc('help rgb_color')

%(b) Set p5b=rgb color([1 1 1]).
p5b=rgb_color([1 1 1])

%(c) Set p5c=rgb color([1 0 0]).
p5c=rgb_color([1 0 0])

%(d) Set p5d=rgb color([0 1 0).
p5d=rgb_color([0 1 0])

%(e) Set p5e=rgb color([0 0 1]).
p5e=rgb_color([0 0 1])

%(f) Set p5f=rgb color([1 1 0]).
p5f=rgb_color([1 1 0])

%(g) Set p5g=rgb color([0 1 1]).
p5g=rgb_color([0 1 1])

%(h) Set p5h=rgb color([1 0 1]).
p5h=rgb_color([1 0 1])

%(i) Set p5i=rgb color([0 0 0]).
p5i=rgb_color([0 0 0])

