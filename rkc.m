function [T,Y]=rkc(f,t0,tf,y0,h)
T=(t0:h:tf)';
N=length(T);
Y=zeros(N,length(y0));
Y(1,:)=y0;
for n=1:N-1 
    k1=f(T(n),Y(n,:))';
    k2=f(T(n)+h/2,Y(n,:)+(h/2)*k1)';
    k3=f(T(n)+h/2,Y(n,:)+(h/2)*k2)';
    k4=f(T(n)+h,Y(n,:)+h*k3)';
    Y(n+1,:)=Y(n,:)+(h/6)*(k1+2*(k2+k3)+k4);
end
end