function [total_score, letter] = assign_grade(homework, midterm, project, final)
%Calculates final grade using the two total score equations and sets
%total_score equal the higher of the two. Then, using if else statements,
%we assign a letter grade depending on the total score value
%Inputs: homework - 8 valued vector, midterm - midterm grade, project -
%project grade, final - final test grade
%Outputs: total_score - highest of the two possible highest scores in
%percentage, letter- letter grade corresponding to total score

lowesthw=min(homework);
hwsum=sum(homework)-lowesthw;
totalscore1=0.25*(hwsum/7) + 0.25*midterm + 0.2*project +0.3*final;
totalscore2=0.25*(hwsum/7) + 0.2*project +0.55*final;
if totalscore1 > totalscore2
    total_score=totalscore1;
else
    total_score=totalscore2;
end
if total_score < 60
    letter = 'F';
elseif total_score >=93
    letter = 'A';
elseif total_score >=90
    letter = 'A-';
elseif total_score >=87
    letter = 'B+';
elseif total_score >=83
    letter = 'B';
elseif total_score >=80
    letter = 'B-';
elseif total_score >=77
    letter = 'C+';
elseif total_score >=73
    letter = 'C';
elseif total_score >=70
    letter = 'C-';
elseif total_score >=60
    letter = 'D';
end