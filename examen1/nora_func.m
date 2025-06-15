function [f] = Barato_Abad_func(x,y)
%BARATO_ABAD_FUNC Summary of this function goes here
%   Detailed explanation goes here
if ((x.^2+y.^2)>= 0) && ((x.^2+y.^2)< 1)
    f=sin(x);
elseif ((x.^2+y.^2)>= 0) && ((x.^2+y.^2)<= 2)
    f=cos(x);
else
    f=0;
end

