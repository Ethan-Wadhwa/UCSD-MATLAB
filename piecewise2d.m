function f = piecewise2d(x,y)
%takes input arguments from q4 and using if else statements determines
%which part of the pieceiwse function the inputs obey to calculate the
%output
    if x >=0 && y > 0
        f = 10*x + 10*y;
    elseif x < 0 && y >= 0
        f = -10*x + 10*y;
    elseif x <= 0 && y < 0
        f = -10*x - 10*y;
    elseif x > 0 && y <= 0
        f = 10*x - 10*y;
    else
        f=0
    end
end