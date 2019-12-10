function [I] = Simpson(x, y)
%created on: 11-10-19
%created by: Nick Krekeler
%last motified: 11-11-19

% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable
%   y = the vector of function values with respect to x
% Outputs:
%   I = the numerical integral calculated

if nargin < 3, error('At least 3 inputs please');
end

if ~(b>a), error('Upper bound must be greater than Lower Bound');
end

if nargin < 4 || isempty(n), n = 100;
end

x = a;
h = (b - a)/n;
s = func(a,varargin{:});
for i = 1: n - 1
    x = x + h;
    s = s + 2*func(x,varargin{:});
end

s = s + func(b,varargin{:});
I = (b - a)*s/(2*n);


end
