tiempo=[1 2 3 4 5 6 7 8 9 10 11 12];
temp=[37.2 37.5 37.7 38.5 38.7 39.2 42 40.1 39.2 38.4 38.1 37.9];
xspline=linspace(1, 12, 31);
yspline=spline(tiempo, temp, xspline);
%con 12 puntos
xspline12=linspace(1, 12, 12);
yspline12=spline(tiempo, temp, xspline12);
%con 23 puntos
xspline23=linspace(1, 12, 23);
yspline23=spline(tiempo, temp, xspline23);
%con 45 puntos 
xspline45=linspace(1, 12, 45);
yspline45=spline(tiempo, temp, xspline45);
plot(tiempo, temp, 'bo', xspline, yspline,'r-',xspline12, yspline12, 'b-', xspline23, yspline23, 'b-', xspline45, yspline45, 'b-')
%previamente axis([1 12 37 43]) pero en el apartado c se cambia para
%ampliar
axis([6 8 41.5 42.5])
legend('nodos','interpolante', 'interpolantes mejorados')
xlabel('hora a.m')
ylabel('temperatura')
