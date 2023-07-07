function days = days_in_month(month,leap)
%Finds number of days in a given month and for feb uses leap year value to
%assign proper # of days
%Inputs: month - all lowercase first 3 letters of a month string,
%leap - 0 or 1 (F,T) for if it is a leap year
%Outputs: days - # of days
switch (month)
    case {'jan', 'mar', 'may', 'jul', 'aug', 'oct', 'dec'}
        days = 31;
    case {'apr', 'jun', 'sep', 'nov'}
        days = 30;
    case 'feb'
        days = 28+leap;
    otherwise
        days = 'Invalid Inputs';
end
end