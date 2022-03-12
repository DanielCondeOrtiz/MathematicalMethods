function coef_b(f,L,n,p)
N=8;
for k=1:p
    t=0:L/N:L; t=t(1:end-1);
    muestra=f(t);
    beta=fft(muestra);
    b=-(2/N)*imag(beta(n+1));
    fprintf('N=%4.0f // b(%1.0f)=%16.15f\n',N,n,b)
    pause(0.1)
    N=2*N;
end
end