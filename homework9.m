disp('Homework 9')
disp('Question 1')
%i
sdr=sanDiegoRainData1900
%ii
year=table2array(sdr(:,1))'
%iii
rainData=sdr(:,12)
%iv
sdr1=table2array(sdr)';
yearTotal = sum(sdr1(2:13,:))
%v
hold on;
figure(1)
bar(year,yearTotal)
title('San Diego Annual Rainfall by Calendar Year')
xlabel('Years')
ylabel('Inches')
hold off;
%vi
%ymax is the max yearly rainfall
%xmax is the year of max yearly rainfall
ymax=max(yearTotal)
xmax=year(find(yearTotal==ymax))
%ymin is the min yearly rainfall
%xmin is the year of minimum yearly rainfall
ymin=min(yearTotal)
xmin=year(find(yearTotal==ymin))
%vii
avgRainYear=mean(mean(sdr1(2:13,:)))
%viii
temp=mean(sdr1(2:13,:));
avgRainYear20=mean(temp(:,100:119))
%ix
temp2=sdr1(2:13,:)';
avgRainMon=mean(temp2)
%x
month = 1:12;
hold on;
figure(2)
bar(month,avgRainMon)
title('San Diego Average Monthly Rainfall (1900-2008)')
xlabel('Month')
ylabel('Inches')
hold off;
%xi
%finds max and number month max occurs in
ymaxavg=max(avgRainMon)
avgmaxmonth=month(avgRainMon==ymaxavg)
%finds min and number month min occurs at
yminavg=min(avgRainMon)
avgminmonth=month(avgRainMon==ymaxavg)

disp('Problem 2')
%2.1)
%is the mypolyfit.m file uploaded as well as this one
%“usage of mypolyfit: coefs=mypolyfit(x, y, n)
%2.2)
[coefs]=mypolyfit(month, avgRainMon, 2)
%2.3)
[coefs]=mypolyfit(year, yearTotal, 7)