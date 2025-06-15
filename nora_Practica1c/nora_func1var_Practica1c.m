function [y] = GRAnaBarato_func1var_Practica1c(x)
%GRANABARATO_FUNC1VAR_PRACTICA1C Summary of this function goes here
%   Detailed explanation goes here
if (x >= -2*pi) && (x < 0)
    y=abs(x);
elseif (x >= 0) && (x <= 2*pi)
    y=sin(x);
else
    disp('otro valor');
end

