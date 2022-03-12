function periodograma(muestra)
N=length(muestra);M=N/2;
[a,b]=coef_itr(muestra);
subplot(2,1,1)
bar(0:M,a,'b'),title('Analisis Espectral (FFT): Coseno')
d=max(abs(a));axis([-1,M+2,-(d+0.1),d+0.1])
subplot(2,1,2)
bar(1:M-1,b,'r'),title('Analisis Espectral (FFT): Seno')
d=max(abs(b));axis([0,M,-(d+0.1),d+0.1]),shg,pause
subplot(111)
end