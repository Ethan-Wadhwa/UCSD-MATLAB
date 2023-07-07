function [m, k, l, Xo, Yo, Zo, Uo, Vo, Wo]= read_input(input_filename, exp_num) 
%Function reads the file and outputs the data from the specified data from
%the given experiment number
%Input: Filename and Experiment number
%outputs: all data needed for bungee input
%for these experiments, input_filename is bungee_data.txt
FileID=fopen(input_filename, 'r');
dataarray= cell2mat( textscan(FileID, '%f%f%f%f%f%f%f%f%f%f','delimiter',',', 'HeaderLines', 4) );
fclose(FileID);
if exp_num > 18
    m='NaN'; k='NaN'; l='NaN'; Xo='NaN'; Yo='NaN'; Zo='NaN'; Uo='NaN'; Vo='NaN'; Wo='NaN';
else
    for i = 1:18
        if exp_num == dataarray(i,1)
            m=dataarray(i,2);
            k=dataarray(i,3);
            l=dataarray(i,4);
            Xo=dataarray(i,5);
            Yo=dataarray(i,6);
            Zo=dataarray(i,7);
            Uo=dataarray(i,8);
            Vo=dataarray(i,9);
            Wo=dataarray(i,10);
        end
    end
end
end
