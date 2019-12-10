%Solve the system of equations in the form A*x = b
%   10*x1 + 2*x2 - x3 = 27
%   -3*x1 - 6*x2 + 2*x3 = -61.5 
%   x1 + x2 + 5*x3 = -21.5
%Set up A for the given system
A = [10, 2, -1;
    -3, -6, 2;
    1, 1, 5];
%Set up b
b = [27; -61.5; -21.5];
%Solve for x
x = A\b;

%Test your function
[L, U, P] = luFactor(A)

%How can you test the output of your function is correct?