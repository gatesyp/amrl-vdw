global eps;
global D;
global x;
global m;
global sigma;

eps = 1;     % Set the value of epsilon.
D = 1;
x = 1;
m = 1;
sigma = .5;

init = [D/2 0];
t = [0 10];

options = odeset('RelTol',1e-8, 'AbsTol',1e-8);

[T,Y] = ode45(@vdp,t ,init, options);

plot(T,Y(:,1),'-o',T,Y(:,2),'-o')
title('Solution of leonard jones 6-12 potential (params= 1) with ODE45');
xlabel('Time t');
ylabel('Solution y');
legend('y_1','y_2')