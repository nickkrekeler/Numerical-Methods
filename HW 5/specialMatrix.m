function [A] = specialMatrix(n,m)
% This function should return a matrix A as described in the problem statement
% Inputs n is the number of rows, and m the number of columns
% It is recomended to first create the matrxix A of the correct size, filling it with zeros to start with is not a bad choice
A = zeros(n,m);

% Now the real challenge is to fill in the correct values of A

%Condition statements to calculate the A Matrix

for x = 1:n    %Rows
    for y = 1:m    %Columns
        if x== 1   %Representing the first row
            A(x,y) = y;
        elseif y == 1    %Representing the first column
            A(x,y) = x;
        else        %Representing elements to the left
            A(x,y) = A(x-1,y) + A(x,y-1);
        end
    end 
end
if nargin ~= 2
    disp('Error please enter two inputs')
end
% Things beyond here are outside of your function
%Must Display the A Matrix
disp(A) 
