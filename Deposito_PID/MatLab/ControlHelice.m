
%Parámetros
r1=0.19;
It=0.0018475;
Kf=0.001505;
Fg=0.30411;
wn=sqrt(r1*Fg/It);
xi=0.0138;
k=r1/It;
s = tf('s');

G1 = k/(s^2+2*xi*wn*s+wn^2);
