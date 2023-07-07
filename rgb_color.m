function color = rgb_color(rgb)
%uses nested if statements to determine the color composition of a 3d
%vector input made up of 1s and 0s.
    if rgb(1) == 0
        if rgb(2) == 0
            if rgb(3) == 0
                color = 'black';
            elseif rgb(3) == 1
                color = 'blue';
            end
        elseif rgb(2) == 1
            if rgb(3) == 0
                color = 'green';
            elseif rgb(3) == 1
                color = 'cyan';
            end
        end
    elseif rgb(1) == 1
        if rgb(2) == 0
            if rgb(3) == 0
                color = 'red';
            elseif rgb(3) == 1
                color = 'yellow';
            end
        elseif rgb(2) == 1
            if rgb(3) == 0
                color = 'magenta';
            elseif rgb(3) == 1
                color = 'white';
            end
        end
    else 
        color = 'Invalid Input';
    end
end