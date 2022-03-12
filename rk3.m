function [T,Y]=rk3(f,t0,tf,y0,h)
T=(t0:h:tf)';
N=length(T);
Y=zeros(N,length(y0));
Y(1,:)=y0;
for n=1:N-1 
    k1=f(T(n),Y(n,:))';
    k2=f(T(n)+h/3,Y(n,:)+(h/3)*k1)';
    k3=f(T(n)+2*h/3,Y(n,:)+(2*h/3)*k2)';
    Y(n+1,:)=Y(n,:)+(h/4)*(k1+3*k3);
end
end