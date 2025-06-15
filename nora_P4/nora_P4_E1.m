%definimos el vector tiempo
t=[1 2 6 10 14 20 30];
N=[3*10^2 2.8*10^2 1.5*10^2 0.7*10^2 0.45*10^2 0.2*10^2 0.1*10^2];
x=t'
y=log(N)'
A=[1 2 6 10 14 20 30; 1 1 1 1 1 1 1]'
c=A\y
%ahora vamos a representar la gráfica 
plot(x, y, '*b', x , A*c, '-r')
xlabel('tiempo');
ylabel('ln(N)');
