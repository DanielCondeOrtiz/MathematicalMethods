function L01_ejer_4(alfa,perturbacion)
% Punto de corte del sistema (alfa)
pcx=1./(1-alfa^2);
pcy=-alfa/(1-alfa^2);
% Dibujo del par de rectas (alfa)
t=-1:0.01:10;
r1=(1-t)/alfa;
r2=-alfa*t;
plot(t,r1,'g',t,r2,'g',pcx,pcy,'o','MarkerEdgeColor','k',...
'MarkerFaceColor','g')
axis([-1,10,-7,1])
shg
pause
% Punto de corte del sistema (nalfa=alfa+perturbacion)
nalfa=alfa+perturbacion;
npcx=1./(1-nalfa^2);
npcy=-nalfa/(1-nalfa^2);
% Dibujo conjunto de los dos pares de rectas (alpha,nalfa)
t=-1:0.01:10;
nr1=(1-t)/nalfa;
nr2=-nalfa*t;
hold on
%axis([-1,10,-7,1])
plot(t,nr1,'r',t,nr2,'r',npcx,npcy,'o','MarkerEdgeColor','k',...
'MarkerFaceColor','r')
hold off
shg
end