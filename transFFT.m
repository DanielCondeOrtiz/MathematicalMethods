function [xi,fhat]=transFFT(fun,a,N)
pxi=-N/2:N/2-1;
xi=(pi/a)*pxi;
pt=-1:2/N:1-2/N;
t=a*pt;
mf=fun(t);
d=fft(mf);
d=fftshift(d);
fhat=(2*a/N)*d.*exp(1i*pi*pxi);
end
