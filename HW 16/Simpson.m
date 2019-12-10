function [I] = Simpson(x, y)
%created on: 11-10-19
%created by: Nick Krekeler
%last motified: 11-12-19

% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable
%   y = the vector of function values with respect to x
% Outputs:
%   I = the numerical integral calculated

%Check for valid size and x spacing
if nargin < 2, error('At least 2 inputs please');
end

if ~(x(end)>x(1)), error('Upper bound must be greater than Lower Bound');
end

n = length(x); 

if length(x) ~= length(y), error('Sizes of Vectors do not match');
end

%Assigning variables to values/equations
h = (x(end) - x(1))/(n-1); 
I = 0;

%If h of the irst interval doesn't equal h of the second interval, then use
%Trapezoidal Rule
if h ~= (x(2) - x(1)), h
    error('h is not evenly spaced, Cannot use Simpsons Rule');
end   
%Stopping Point thats one interval short 
if rem(n,2) ~= 0
    stop = n - 2;
    
else
    stop = n - 3;
    
end

for i = 1:2:stop
    
    s = (h/3)*(y(i+0) + 4*y(i+1) + y(i+2));
    
    I = I + s;
end

%Trapezoidal Rule
if  rem(n,2) == 0
    s = (h)*(y(end) + y(end-1))/2;
    warning('Using Trapezoidal Rule to complete integration');
    
    I = I + s;
end

end

