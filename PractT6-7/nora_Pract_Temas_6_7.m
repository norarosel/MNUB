tspan=[0 1.5];
y0=1;
[tnum1, ynum1]=ode45(@EDO1, tspan, y0);
[tnum2, ynum2]=ode45(@EDO2, tspan, y0);
plot(tnum1, ynum1, 'b-', tnum2, ynum2, 'r-')
ylabel('y')
xlabel('t')
legend('dy=-y','dy=2*y')
%APARTADO 5
Area=quadl(@funDif, 0, 1.5);
%APARTADO 6
t=0:0.01:1.5;
%APARTADO 7
ynum1Interp=spline(tnum1, ynum1, t)
ynum2Interp=spline(tnum2, ynum2, t)
%APARTADO 8
InterpDif=abs(ynum1Interp-ynum2Interp)
%APARTADO 9
AreaAprox=sum(0.01*InterpDif)
%APARTADO 10
difArea=abs(Area-AreaAprox)
ErrorPorcentual=(difArea/Area)*100
%APARTADO 11
fprintf('El porcentaje de error en el cálculo del área es %4.2d\n',ErrorPorcentual)

