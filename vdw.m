function dy = vdw(t,y)

global eps;
global D;
% global x;
global m;
global sigma;
global gamma;

dy = zeros(2,1);

dy(1) = y(2);

dy(2) = ((12*eps/m*sigma)*((sigma/y(1))^13 - (sigma/y(1))^7 - (sigma/(D-y(1)))^13 + (sigma/(D-y(1)))^7)) - (gamma * y(2));