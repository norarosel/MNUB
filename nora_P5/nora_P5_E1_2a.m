x=linspace(0, 1.2, 100);
y=humps(x);
plot(x, y, 'b-')
axis([0 1.2 -20 100])
hold on
%funcion del apartado 1
x_1=linspace(0, 1.2, 10);
y_1=humps(x_1);
plot(x_1, y_1,'ko')
%funcion del apartado 2
x_2=linspace(0, 1.2, 100);
y_2=interp1(x_1, y_1, x_2, 'spline');
plot(x_2, y_2, 'r-')
%funcion del apartado 3
x_3=linspace(0, 1.2, 100);
spline=spline(x_1, [0 y_1 0]);
plot(x_3, ppval(spline, x_3), 'g-');
legend('humps','nodos','not-a-knot', 'sujeta')
hold off