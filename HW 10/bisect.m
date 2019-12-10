function [root,fx,ea,iter] = bisect(func,xl,xu,es,maxit,varargin)
if nargin < 3, error('Please have 3 inputs'), end
test = func(xl,varargin{:})*func(xu,varargin{:});
if test > 0, error('No Sign Change'), end
if nargin < 4 || isempty(es), es = 0.0001; end
if nargin < 5 || isempty(maxit), maxit = 50; end
iter = 0; xr = xl; ea = 100;

while (1)
    xrold = xr;
    xr = (xl +xu)/2;
    iter = iter + 1;
    if xr ~= 0, ea = abs((xr - xrold)/xr)*100; end
    test = func(xl,varargin{:})*func(xr,varargin{:});
    if test < 0 
        xu = xr;
    elseif test > 0
        xl = xr;
    else
        ea = 0;
    end
    if ea <= es || iter >= maxit, break, end
end
root = xr; fx = func(xr,varargin{:});


format short g
r = 1; rhos = 200; rhow = 1000;
r*h = @(h) 4/3*r^3*pi*(rhow-rhos)-rhow*pi*h.^2/3.*(3*r-h);
h = [0:2*r/20:2*r]; fhh=f(h);
