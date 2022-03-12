function [f,gradf]=paraboloide(x)
f=3*x(1)^2+2*x(1)*x(2)+x(2)^2-x(1)-2*x(2)+5;
gradf=[6*x(1)+2*x(2)-1;2*x(1)+2*x(2)-2];
end