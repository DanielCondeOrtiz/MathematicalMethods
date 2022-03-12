function [T,Y]=eul(f,t0,tf,y0,h)
T=(t0:h:tf)';
N=length(T);
Y=zeros(N,length(y0));
Y(1,:)=y0;
for n=1:N-1
    Y(n+1,:)=Y(n,:)+h*f(T(n),Y(n,:))';
end
end