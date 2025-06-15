tiempo=[0 0.1333 0.2667 0.4 0.5333 0.6667 0.8 0.9333 1.0667 1.2]
conc=[5.1765 22.0635 86.267 47.4483 15.2497 11.5113 17.8462 20.7568 10.427 2.9118]
xhat=linspace(0, 1.2, 100)

%gráfica 1
subplot(2,2,1)
yhat=interp1(tiempo, conc, xhat, 'nearest')
plot(tiempo, conc, 'bo', xhat, yhat,'r-')
axis([0 1.2 -20 100])
title('nearest')
%gráfica 2 
subplot(2,2,2)
yhat=interp1(tiempo, conc, xhat, 'linear')
plot(tiempo, conc, 'bo', xhat, yhat,'r-')
axis([0 1.2 -20 100])
title('linear')
%gráfica 3
subplot(2,2,3)
yhat=interp1(tiempo, conc, xhat, 'pchip')
plot(tiempo, conc, 'bo', xhat, yhat,'r-')
axis([0 1.2 -20 100])
title('pchip')
%gráfica 4
subplot(2,2,4)
yhat=interp1(tiempo, conc, xhat, 'spline')
plot(tiempo, conc, 'bo', xhat, yhat,'r-')
axis([0 1.2 -20 100])
title('spline')