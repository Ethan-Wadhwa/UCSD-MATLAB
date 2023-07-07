function winnings = lottery(ticket)
%defines winning numbers by importing the dat file and itertes through all
%numbers comparing the ticket to the winning numbers
    winnings = 0;
    win_num=importdata('winning_number.dat');
    %iterates through all seperate numbers to compare guessed numbers to
    %winning numbers
    for i = 1:6
        if ticket(i) == win_num(i)
            winnings = winnings +1;
        end
    end
    winnings = 10^winnings;
    if winnings == 1
        winnings = 0;
    end
end