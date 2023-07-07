%quiz=input('Enter Quiz: ')
%if quiz <0 || quiz > 10
%    error('You input a wrong grade')
%else
%    if quiz==9 || quiz==10
%        grade='A'
%    elseif quiz==8
%        grade='B'
%    elseif quiz==7
%        grade='C'
%    elseif quiz==6
%        grade='D'
%    else
%        grade='F'
%    end
%end
%fprintf('grade=%', grade)


%isletter("a")
%isletter("*")
%letter=input('input Y (y) or N (n):')
%if letter == y || y
num=7;
if num>3
    fprintf('3\n')
    if num<5
        fprintf('5\n')
        if num==7
            fprintf('7\n')
        end
    end
end
inputnum=input('Enter a positive number:')
while int32(inputnum)==inputnum
    inputnum=input('Invalid: Enter a positive even number:')
end
fprintf('Thanks, you entered %d \n', inputnum)