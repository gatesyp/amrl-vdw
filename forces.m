function dy = forces(t,y)

global eps;
global d1;
global d2;
global sigma;

dy = zeros(2,1);

dy(1) = y(2);

dy(2) = (eps*((sigma/d1)^12-2*(sigma/d1)^6)) + (eps*((sigma/d2)^12-2*(sigma/d2)^6));

%dy(2) = (12*eps)/sigma*(-(sigma/d1)^13 + (sigma/d1)^7) + (12*eps)/sigma*(-(sigma/d2)^13 + (sigma/d2)^7);