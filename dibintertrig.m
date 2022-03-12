function [t,It]=dibintertrig(muestra,L,h)
t=0:h:L;
[a,b]=coef_itr(muestra);
omg=2*pi/L;
N=length(muestra);
M=N/2;
It=0.5*a(1)+a(2:M+1)*cos(omg*(1:M)'*t)+b(1:M-1)*sin(omg*(1:M-1)'*t);
end