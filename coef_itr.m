function [a,b]=coef_itr(muestra)
N=length(muestra); M=N/2;
a=zeros(1,M+1);
b=zeros(1,M-1);
beta=fft(muestra)/N;
a(1:M+1)=2*real(beta(1:M+1));
b(1:M-1)=-2*imag(beta(2:M));
a(M+1)=(1/2)*a(M+1);
end