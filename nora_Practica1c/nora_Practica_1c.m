%4
x=linspace(-2*pi,2*pi,101);
for i=1:1:101
    y(i)=GRAnaBarato_func1var_Practica1c(x(i));
end 

%5 
%u=x+3.5;
pol=[1 3.5];
u=polyval(pol, x);

%6
plot(x,y,'b-')
xlabel('x');
ylabel('y');
xlim([-3.5 3.5])
%7
hold on
%8 
plot(x,u, 'r:')
legend('y', 'u')

%9 POR HACER (primero creamos la matriz de ceros que tenga 
%por filas la longitud de x y por columnas la longitud de y
%a continuación la rellenamos según se va recorriendo el bucle
z=zeros(length(x),length(y));
for i=1:1:length(x)
    for j=1:1:length(y)
    z(i,j)=GRAnaBarato_func2var_Practica1c(x(i),y(j));
    end
end
%10
figure
%11
surf(x,y,z)
%12
[X,Y] = meshgrid(x,y);
%13 
Z=GRAnaBarato_func2var_Practica1c(X,Y);
%14
figure
%15
surf(X,Y,Z)
%16
hold off
