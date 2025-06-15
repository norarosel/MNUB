po2=[10 20 30 40 50 60 70 80 90 100 110 120];
s=[0.18 0.4 0.65 0.8 0.87 0.92 0.94 0.95 0.95 0.96 0.96 0.97];
y=log(s./(1-s));
x=log(po2)';
columnaunos=ones(length(x), 1);
A=[x columnaunos];
c=A\y'
a=c(1)
b=c(2)
%como queremos obtener p50 y sabemos que b=-n*log(p50), deshacemos los
%cambios
p50=exp(-b/a)
plot(x, y, '*b', x , A*c, '-r')
xlabel('log(pO2)')
ylabel('log(s/(1-s))')
n=a
snueva=(po2.^n)./(po2.^2+p50.^n);
error=[0.01 0.015 0.05 0.034 0.02 0.01 0.01 0.02 0.035 0.043 0.067 0.05];
errorbar(po2, snueva, error)
xlabel('po2')
ylabel('s(nueva)')

