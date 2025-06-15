clear
echo on
% EJERCICIOS SOBRE LOS TUTORIALES DE MATLAB DEL 1 AL 5
%
% Esto es una PLANTILLA para desarrollar los ejercicios prácticos.
% Debe renombrar la plantilla a GRxx_Practica_1a.m y, una vez completado el
% ejercicio, subirla al Moodle de la asignatura.
% En campo de comentarios (precedido por %) se le indican las
% instrucciones a seguir, y usted debe incluir a continuación los mandatos
% de Matlab correspondientes.
% NO incluya ";" al final de los mandatos, de forma que se presente por
% pantalla el resultado de la ejecución de los mandatos.
% Cada bloque está separado por un mandato pause.
%
pause
% 1) Cree un vector fila, de nombre u, con componentes 1, 3, 5, y otro
% vector fila v, con componentes 2, 4, 6. Calcule el producto escalar de
% ambos vectores de dos formas, usando y sin usar el mandato dot.
u=[1 3 5]
v=[2 4 6]
u*v'
dot(u, v')
pause
% 2) Cree ahora un vector columna, de nombre w, con componentes 2, 4, 6, y
% calcule el producto escalar de u y w, usando y sin usar el mandato dot.
w=[2 4 6]
w'
u*w'
dot(u, w')
pause
% 3) Cree una matriz 3x3, de nombre A, cuyas filas tengan componentes 1,2,3
% (1ª fila), 4,5,6 (2ª fila) y 7,8,9 (3ª fila), y una matriz identidad 3x3,
% (utilice el mandato eye), de nombre I. Calcule la traspuesta de A y
% multiplíquela por la matriz I. llame B al resultado de esta operación.
A=[1 2 3; 4 5 6; 7 8 9]
I=eye(3)
A'
B=A'*I
pause
% 4) Usando la notación ":" cree ahora un vector columna, de nombre AC2,
% con el contenido de la segunda columna de la matriz A, y un vector fila, 
% de nombre AF3, con el contenido de la tercera fila de la matriz A.
AC2=A(:,2)
AF3=A(3,:)
pause
% 5) Usando el operador .^, cree una matriz cuyos elementos sean, uno a uno, los
% de la matriz A elevados al cuadrado. Compare este resultado con el del producto
% A.*A (y verá que son iguales) y con el del producto matricial A*A (y verá
% que son distintos). Este último, sin embargo, coincidirá con el de A^2.
A.^2
A.*A
A^2
A*A
pause
% 6) Extraiga la componente (2,3) (fila 2, columna 3) de la matriz A y
% multiplíquela por un vector que tenga por componentes los elementos de la
% diagonal principal de la matriz B (mandato diag). Llame P al resultado.
% Fíjese en si éste es un vector fila o columna.
% Calcule las dimensiones (longitud) del vector P (mandato length).
A1=A(2,3)
P=A1*diag(B)
length(P)
pause
% 7) Cree una matriz 2x3, de nombre C, cuyos componentes sean todos 1, y
% multiplíquela por una matriz 3x3, de nombre Aleat, con componentes
% escogidos aleatoriamente por Matlab. Llame E a la matriz resultante.
% Fíjese en si los elementos de Aleat tienen todos el mismo signo y entre
% qué valores varían.
% Calcule las dimensiones de la matriz E (mandato size).
C=ones(2,3)
Aleat=rand(3,3)
E=C*Aleat
size(E)

pause
% 8) Usando el mandato linspace, cree un vector, de nombre U, con 11 elementos
% (inCLuyendo los extremos) equiespaciados entre 0 y 1. Realice la misma
% operación (llame ahora V al vector) usando la notación ":".
U=linspace(0,1,11)
V=0:0.1:1
pause
% 9) Cree un vector, de nombre Ang, con componentes 0, pi, pi/2, y una matriz
% 2x3, de nombre MAng, cuya primera fila contenga los senos de los
% elementos de Ang y su segunda fila los cosenos de los elementos de Ang.
Ang=[0 pi pi/2]
MAng=[sin(0) sin(pi) sin(pi/2);cos(0) cos(pi) cos(pi/2)]
pause
% 10)Cree una matriz compleja 3x3, de nombre H, con componentes 1+i, 1-i, i
% (1ª fila), 1-i, i, 1+i (2ª fila) e i, 1+i, 1-i (3ª fila). Calucle su
% matriz traspuesta (llámele HT) y su matriz adjunta, es decir, traspuesta
% conjugada (llámele HA), y compare ambas. Usando el mandato conj, calcule
% también la matriz conjugada (elemento a elemento) de la matriz H, y
% llámele HC. Note además que podría haber calculado la traspuesta usando
% el mandato transpose. 
H=[1+i 1-i i;1-i i 1+i;i 1+i 1-i]
HT=H.'
HA=H'
HC=conj(H)
HTrans=transpose(H)
pause
% 11) Cree un vector columna, de nombre b, con componentes 0, 1, 2, y resuelva,
% usando el operador barra invertida de Matlab, el sistema lineal Ax=b.
% Fíjese en que, al resolver el sistema, aparece un mensaje de aviso.
% Calcule, usando el mandato det, el valor del determinante de A, para
% comprobar que, efectivamente, la matriz A es una matriz casi singular.
b=[0 1 2]
b'
x=A\b'
det(A)
pause
% FIN DE LA PRÁCTICA
echo off