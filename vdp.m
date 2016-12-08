function dydt = vdp(t,y)
%VDP1  Evaluate the van der Pol ODEs for mu = 1
%
%   See also ODE113, ODE23, ODE45.

%   Jacek Kierzenka and Lawrence F. Shampine
%   Copyright 1984-2014 The MathWorks, Inc.

global eps;
global D;
global x;
global m;
global sigma;



%dydt = zeros(2,1);
%dydt(1) = y(2);
%dydt(2) = ((12*eps/(m*sigma))*((sigma/x)^13 - (sigma/x)^7 - (sigma/(D-x))^13 + (sigma/(D-x))^7));



dydt = [y(2); ((12*eps/(m*sigma))*((sigma/y(1))^13 - (sigma/y(1))^7 - (sigma/(D-y(1)))^13 + (sigma/(D-y(1)))^7))];
