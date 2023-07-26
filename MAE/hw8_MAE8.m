%%Homework 8

clear all;   % This clears all workspaces
close all;   % This closes all figures 
clc;         % This clears the command window
format long; 

name = 'Ethan Wadhwa';
id = 'A15778800';
hw_num = 8;

%Problem 1
%Download the file note.mat from CANVAS and load it into MATLAB. The
%file contains a cell array named note. Perform the following exercises.
load('note.mat')
%(a) What is the dimension (size) of note. Put the answer in p1a.
p1a=size(note)
%(b) Extract all elements in the first column of note and put them into a column cell
%array p1b.
p1b=note(:,1)
%(c) Extract all elements in the last row of note and put them into a row cell array p1c.
p1c=note(9,:)
%(d) Extract the content of the 3rd-row 2nd-column element of note and put it into a row
%vector p1d. Note that p1d should have double datatype, not a cell class.
p1d=cell2mat(note(3,2))
%(e) Copy cell array p1b into cell array p1e. Use for loop to modify cell array p1e such
%that the first letters of both first and last names in each element of the cell array are capi-
%talized. Hint: the first letter of the last name is preceded by a blank space.
p1e=p1b;
for i = 1:9
    temp=string(p1e(i));
    temp=upper(extractBefore(temp,2)) + extractAfter(temp,1);
    for n = 2:strlength(temp)
        if extractBetween(temp,(n),(n)) == ' '
            temp=extractBefore(temp,(n+1)) + upper(extractBetween(temp,(n+1),(n+1))) + extractAfter(temp, (n+1));
        end
    end
    p1e(i)={temp};
end
p1e

%Problem 2: 
%Use table 1 to create a vector of structure named student to store the records of three
%students. The data structure should have the following fields: name, PID, homework, project,
%midterm and final exam. The name and PID fields are strings. The homework field is a vector
%of 8 homework grades. The project, midterm and final exam fields contain a single number.
names = { "Noah Williams" , "Benjamin Frank" , "Oliver Harper"};
pids = {"A01", "A02", "A03"};
hws = {[70 91 82 93 84 85 96 78], [90 81 92 83 67 85 86 92], [80 71 92 73 64 75 96 77]};
projs = {96 82 77};
mids = {93 83 91};
finals = {63 91 76};
student=struct('name', names, 'PID', pids, 'homework', hws, 'project', projs, 'midterm', mids, 'final_exam', finals)
%(a) Set p2a = student(1).
p2a = student(1)
%(b) Set p2b = student(2).
p2b = student(2)
%(c) Set p2c = student(3).
p2c = student(3)
%(d) Add a new field, named hw average, to store the average homework grade out of
%the best 7 assignments. Be sure to drop the lowest homework score before computing the
%average. Set p2d = [student.hw average].
for i = 1:3
    homeworks = student(i).homework;
    highest7sum = sum(homeworks)-min(homeworks);
    student(i).hw_average= highest7sum/7;
end
p2d = [student.hw_average]

%Problem 3
%Download the file class survey.dat from CANVAS. The file contains data
%collected in the survey which you had taken during homework 5. The following 6 questions
%were asked:
%1. What is your class level?
%2. Do you have any MATLAB / coding experience prior to the course?
%3. Which of the following lab sessions do you attend most frequently?
%4. What grade do you expect for the course?
%5. On average how many hours per week do you spend studying outside of class?
%6. How difficult was the midterm?

%The data file has 6 columns which contain the answers to the questions above. Note that,
%when students did not answer the question, the collected data is a string 'Null'. Load the
%data into MATLAB, and perform the following exercises:
class_survey = importdata('class_survey.dat')
%(a) Make a bar graph to show the number of students who most frequently attended the
%lab on Tuesday, Wednesday, Thursday or Friday. Label the axes and give a title. Set p3a
%= 'See figure 1'.
tue = 0;wed = 0;thu=0;fri=0;
for i = 1:length(class_survey)
    str = string(class_survey(i));
    if extractBetween(str, 28, 30) == 'Tue'
        tue = tue+1;
    elseif extractBetween(str, 28, 30) == 'Wed'
        wed = wed+1;
    elseif extractBetween(str, 28, 30) == 'Thu'
        thu=thu+1;
    elseif extractBetween(str, 28, 30) == 'Fri'
        fri=fri+1;
    end
end
x = categorical({'Tuesday', 'Wednesday', 'Thursday', 'Friday'});
x = reordercats(x,{'Tuesday', 'Wednesday', 'Thursday', 'Friday'});
y = [tue wed thu fri];
figure(1);
hold on;
bar(x,y)
title('Students attending lab section per day')
xlabel('Day')
ylabel('# of Students')
hold off;
p3a = 'see figure 1'

%(b) How many students have previous MATLAB/coding experience? Put the answer into
%p3b.
expstudents=0;
for i = 1:length(class_survey)
    temp = string(class_survey(i));
    if extractBetween(temp, 18, 20) == 'Yes'
        expstudents = expstudents +1;
    end
end
p3b = expstudents
%(c) How many students spent more than 6 hours studying outside of class? Put the
%answer into p3c.
over6hours=0;
for i = 1:length(class_survey)
    temp = string(class_survey(i));
    if extractBetween(temp, 46, 50) == '7 - 9'
        over6hours = over6hours +1;
    elseif extractBetween(temp, 46, 50) == '>= 10'
        over6hours = over6hours +1;
    end
end
p3c = over6hours
%(d) How many sophomores expected to receive an A for the course? Put the answer into
%p3d.
expAsoph=0;
for i = 1:length(class_survey)
    temp = string(class_survey(i));
    if extractBetween(temp, 1, 10) == ' Sophomore'
        if extractBetween(temp, 40, 40) == 'A'
            expAsoph=expAsoph+1;
        end
    end
        
end
p3d = expAsoph