function [y,jac]=fun_ejemplo(x)
y(1)=2*x(1)-x(2)-exp(-x(1));
y(2)=-x(1)+2*x(2)-exp(-x(2));
jac(1,1)=2+exp(-x(1));
jac(1,2)=-1;
jac(2,1)=-1;
jac(2,2)=2+exp(-x(2));
end