% Create a test function to test falsePosition function. 
% It is best to choose something where you already know the answer so it is
% easy to check if the solution your algorithms gives is correct.
% Polynomials are a nice starting place, since we have equations for the roots
testfunc = @(x) x.^3; % the root for this is pretty clearly x=0


% now lets test the function, using default value for es
format compact
es = 0.001; 
maxit = 50; 
xl = -1;
xu = 2;

x = linspace(xl, xu);
plot(x, testfunc(x));
hold on

[root, fx, ea, iter] = falsePosition(testfunc, xl, xu, es, maxit)

