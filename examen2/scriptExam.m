

%PARTE 1
load DatosEntrada.txt
A=DatosEntrada;
x=DatosEntrada(:,1);
y1=DatosEntrada(:,2);
y2=DatosEntrada(:,3);
y3=DatosEntrada(:,4);
%subgrafica1
subplot(3,1,1)
plot(x, y1, 'b-')
xlabel('x')
ylabel('y')
xlim([-3 3])
%subgrafica2
subplot(3,1,2)
plot(x, y2, 'b-')
xlabel('x')
ylabel('y')
xlim([-3 3])
%subgrafica3
subplot(3,1,3)
plot(x, y3, 'b-') 
xlabel('x')
ylabel('y')
xlim([-3 3])
%PARTE 2
x1=linspace(0, 1, 80);
y=humps(x1);
xs=linspace(0, 1, 8);
ys=humps(xs)
figure
plot(xs, ys, 'k*', x1, y, 'k-')
hold on
yhatNaK=interp1(xs, ys, x1, 'spline')
yhatSuj=spline(xs, [100 ys -100], x1);
plot(x1, yhatNaK, 'b:', x1, yhatSuj, 'r--')
xlabel('x')
ylabel('y')
legend('datos', 'humps','spl def', 'spl suj')
hold off
%PARTE 3
t1=linspace(0, 2, 100);
y1=F1(t1);
y2=F2(t1);
figure
plot(t1, y1, t1, y2)
xlabel('t1')
ylabel('y1 e y2')
legend('y1', 'y2')
dips('FIN DEL EXAMEN')




