function imagekvalsin(A,p,paleta)
[U,S,V]=svd(A);
colormap(paleta);
for k=1:p
    Y=U(:,1:k)*S(1:k,1:k)*V(:,1:k)';
    image(Y);colorbar,shg
    pause(0.1)
end
end