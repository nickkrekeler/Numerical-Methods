function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
%falsePosition.m
%created on: 10-1-19
%created by: Nick Krekeler
%last modified: 10-3-19
%Descpription:
    %falsePosition finds the root of a function using false position method
%Inputs:
    % func - function 
    % xl - lower bound
    % xu - upper bound
    % es - desired relative error
    % maxit - maximum number of iterations
    % varargin - any additional parameters
%Outputs:
    % root - estimated root location
    % fx - function evaluated at the root location 
    % ea - appropriate relative error
    % iter - how many iterations were performed 

    
%Input function and values for xl and xu (default values)

%f(xr) = xu - ((f(xu)*(xu - xl))/(f(xl) - f(xu)))

if nargin < 2
   error('Please enter at least two inputs')
end

xrold = xl %Used to identify the approximate error

%Plug values in for f(xr)
for iter = 1:maxit 
    xr = xu - ((func(xu)*(xl - xu))/(func(xl) - func(xu)));

    %Does f(xr) = 0?
    if func(xr) == 0
        ea = 0;
        break
    end

    %Does f(xr) have the same sign?
    if func(xr)*func(xl) > 0
        xl = xr; %TRUE so then replace the xl with xr

    else
        xu = xr; %FALSE so then replace xu with xr    

    end

    %Is f(xr)'s error less than the desired relative error
    ea = abs((xr - xrold)/xr)*100
    if ea < es
        break
    end
    
     xrold = xr;
    %Graphing the function and iterations 
    hold on
    plot (xr, func(xr), 'o');
    
    %Printing out xl and xr
    
    xl
    xu

end


root = xr;
fx = func(root);

end



        