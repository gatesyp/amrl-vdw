%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% This script numerically solves 2nd-order ODE
% 
% ((12*eps/m*sigma)*((sigma/x)^13 - (sigma/x)^7 - (sigma/D-x)^13 + (sigma/D-x)^7))
%
% and then plots the solution.
%
% The right-hand side of the equation is defined in 
% the matlab function file 'vdw.m'. 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global eps;
global D;
global x;
global m;
global sigma;

eps = 1;     % Set the value of epsilon.
D = 1;
x = .5;
m = 1;
sigma = D/2;

init = [D/2 0];   % Set the initial condition of the ODE.

t = [0 10];     % Define the time interval over which solution will be computed.  
                  % You may need to change the right end point to see the long-term
                  % behavior of the solution, depending on epsilon. 


% Set some options used in the next command.  Do not worry about this for now.
options = odeset('RelTol',1e-8, 'AbsTol',1e-8);

% Numerically solve the equation.  See 'ode45' in matlab help for more info on this commmand. 
[T,Y] = ode45(@vdw,t,init,options);


% Plot the solution. 

% position
subplot(2,1,1)
set(gca,'FontSize',24)
plot(T,Y(:,1),T,Y(:,2))  % See 'colon' in matlab help for why we use 'Y(:,1)' here.  
%title(['y versus tau, eps=', num2str(eps)])
%ylim([0,1.2])
legend('Position','Velocity')

%% velocity
%subplot(2,1,2)
%set(gca,'FontSize',24)
%plot(T,Y(:,2))
%title(['y'' versus tau, eps=', num2str(eps)])

% To save the plots for printing, uncomment the following line.

%saveas(gcf,'eps2.pdf');