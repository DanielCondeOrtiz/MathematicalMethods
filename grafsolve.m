%% Fichero script grafsolve.m
x=-1:0.01:1;
[X,Y]=meshgrid(x);
Z1=2*X-Y-exp(-X);
Z2=-X+2*Y-exp(-Y);
contour(X,Y,Z1,[0,0],'b')
hold on
contour(X,Y,Z2,[0,0],'r')
hold off
shg
