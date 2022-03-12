%% fichero script file_mf64.m
f1=3.125;f2=6.25;
f=@(t)(0.5+2*sin(2*pi*f1*t)+cos(2*pi*f2*t));
L=0.32;tm=0:L/64:L;tm=tm(1:end-1);
mf64=f(tm);
[t,It]=dibintertrig(mf64,0.32,0.001);
ft=f(t);
plot(t,ft,'r-',t,It,'--g')
legend('Función','Interpolante-64', 'Location','SW'),shg