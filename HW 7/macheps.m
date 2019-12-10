function ep = macheps
%created on: 9/12/19
%created by: Nick Krekeler
%last modified: 9/12/19
%Description: Function above helps determine the machine epsilon
    %that is thought of as the smallest number when added to one.
    %The algorithm below goes through each step to solve. 
%Input:
    %e - epsilon
%Output:    
    %macheps - machine epsilon

%Step 1
e = 1;  

%Step 2
while (1)
    if e + 1 <= 1, break, end % If 1 + e is less than or equal to one, go to Step 5

%Step 3
    e = e/2;  
    
%Step 4
end      %Return to Step 2

%Step 5
ep = 2*e;