%6
matrizDatos=load ('datos.txt');
%7
datosX=matrizDatos(:, 1);
datosY=matrizDatos(:,2);
%8

vectorF1=GRAnaBarato_funcRR_Practica1b(datosX);
%9
maximoF1=max(vectorF1);
minimoF1=min(vectorF1);
mediaF1=mean(vectorF1);
desvestF1=std(vectorF1);
%10
fprintf('El valor medio de vectorF1 es %d', mediaF1)
%11
vectorF2=GRAnaBarato_funcR2R_Practica1b(datosX, datosY);
%12

[vectorF3,vectorF4]=GRAnaBarato_funcR2R2_Practica1b(datosX,datosY);
%13
save DatosGuardados.mat
%14
disp('FIN DE LA PRACTICA')
%15
clear 