% Define problem constants
g = 9.81;
mu = 0.55;
F = 150;
m = 25;

%func = (mu*m*g)/(cos(angle) + mu*sin(angle));
% Define the function to be solved for. Is the angle specified in radians or degrees?

func = @(angle) F*(cosd(angle) + mu*sind(angle)) - (mu*m*g); %Must specify in degrees. d at end of sin/cos expresses it in degrees

% THINK, what makes range sense for angle?
angle = [0:90]; 
% Plot your function. Does plotting give you an idea about where the root is?
plot(angle, func(angle)) 
% Finaly solve for the root using the bisection script given to you, which can be called as:
xl = 40;
xu = 90;
[root, fx, ea, iter] = bisect(func, xl, xu);

% These variables will be checked for your final answer:
%angle =  % the angle in degree that solves this problem
%fx =     % the function value at your solved angle
%ea =     % the bisection error estimate
%iter =   % the number of bisection iterations
angle = root;
format compact

fprintf('Root = %2.4f, fx = %2.4f, Approximate Error = %2.4f, Number of Iterations = %2.4f', root, fx, ea, iter)

