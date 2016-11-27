
% projectileb
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% This script numerically solves 2nd-order ODE
% 
% d^2y/dt^2 = -eps/(1+y)^2, y(0)=0, dy/dt(0)=eps
%
% and then plots the solution.
%
% The right-hand side of the equation is defined in 
% the matlab function file 'rhs_projectileB.m'. 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
hold on

global eps;
global d1;
global d2;
global sigma;
          % Declare epsilon as global.
eps = 1;
d1 = 1;
d2 = 1;
sigma = 1;
init = [-10 10];   % Set the initial condition of the ODE.

D = [0 2];     % Define the time interval over which solution will be computed.  
                  % You may need to change the right end point to see the long-term
                  % behavior of the solution, depending on epsilon. 


% Set some options used in the next command.  Do not worry about this for now.
options = odeset('RelTol',1e-8, 'AbsTol',1e-8);

% Numerically solve the equation.  See 'ode45' in matlab help for more info on this commmand. 
[T,Y] = ode45(@forces,D,init,options);
%hold on 

% for loop goes here
% for 
%hold odd
% Plot the solution. 

% position
subplot(2,1,1)
set(gca,'FontSize',24)
plot(Y(:,1),Y(:,2))   

title('forces')

hold off
