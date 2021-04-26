%Parametros Controlador
%Constantes de proceso
Ks=0.3543/(10*sqrt(3));
Ke=0.25/10;
A=pi;

% Punto de Funcionamiento
h0=1.5;
u20=5.0;
u10=Ke*u20/(Ks*sqrt(h0));

%Función de Transferencia
s = tf('s');

G1 = -Ks*sqrt(h0)/(A*s+(Ks*u10)/(2*sqrt(h0)));