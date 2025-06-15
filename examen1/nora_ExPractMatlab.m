%Ana Barato Abad
%4
x=linspace(-2,2,101);
%5
y=linspace(-2,2,51);
%6
z=zeros(51,101);
%7 
zz(x,y)=Barato_Abad_func(x,y);
%8
surf(x,y,z)
%9
A=randi([0 1],51,101);
%10
B=z*A';
%11
c=sum(B);
%12 
d=abs(c);
%13
figure
%14
plot(y,x,'r-')
xlabel('vector y');
ylabel('vector d');
legend('leyenda para d')
%15
disp('FIN DEL EJERCICIO')

