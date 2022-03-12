function L05_beta(p)
f=@(t)(t.^(5/3).*(1-t).^(-1/3));
for k=4:p
    tol=10^(-k);
    Q=quad(f,0,1,tol);
    fprintf('TOL=10^(-%2.0f) // beta(8/3,2/3)=%16.15f \n',k,Q);
    pause(0.5)
end
end