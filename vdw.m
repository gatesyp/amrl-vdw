function dy = vdw(t,y)

global eps;
global D;
global x;
global m;
global sigma;

dy = zeros(2,1);

dy(1) = y(2);

dy(2) = ((12*eps/m*sigma)*((sigma/x)^13 - (sigma/x)^7 - (sigma/D-x)^13 + (sigma/D-x)^7));