function nd = days(mo,da,leap)
days.m
%created on: 9/9/19
%created by: Nick Krekeler
%last modified: 9/10/19
%Description: Determining the elapsed days in a year
%Inputs:
%   mo - months (ranging from 1-12)
%   da - days (ranging from 1-31)
%   leap - Leap year (0 for non-leap year and 1 for leap year)
% Outputs:
%   nd - Number of daays elapsed in a year

%Setting the final result to calculate the total number of days
nd = da;

%Including all of the months
for i=1:mo-1
    switch i
        %January has 31 days
        case 1
            nd = nd + 31;
            
        %Feburary has 28 days and could have 29 days (with leap year)
        case 2
            switch leap
                case 0 
                    nd = nd +28;
                case 1
                    nd = nd +29;
            end
            
        %March has 31 days
        case 3
            nd = nd +31;
            
        %April has 30 days
        case 4
            nd = nd + 30;
            
        %May has 31 days
        case 5
            nd = nd +31;
            
        %June has 30 days
        case 6
            nd = nd + 30;
            
        %July has 31 days
        case 7
            nd = nd + 31;
            
        %August has 31 days
        case 8
            nd = nd + 31;
            
        %September has 30 days
        case 9
            nd = nd + 30;
            
        %October has 31 days
        case 10
            nd = nd + 31;
            
        %November has 30 days
        case 11
            nd = nd + 30;
            
        %December has 31 days
        case 12
            nd = nd + 31;
            
    end

end            
end

