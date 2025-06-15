e=0.342555712;
 
xb= [0.34259033];
xrf= [0.34254625];
xs= [0.34255713];
xnr= [0.34255712132];
 
errorB= abs((e-xb)/e)
errorRF= abs((e-xrf)/e)
errorS= abs((e-xs)/e)
errorNR= abs((e-xnr)/e)
%ahora hacemos el apartado f correspondiente  la función
x=linspace(0.3,0.4,1000);
y=funcionf(x);
plot(x,y)

%ejercicio e 
fun = @(x)2600*sin(2*pi*x/2.34)-3.1; % function
x0 = [2 3]; % initial interval
x = fzero(fun,x0)

options = optimset('Display','iter');
[x,fval,exitflag,output] = fzero(fun, x0, options)