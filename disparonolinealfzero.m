function [s0,T,Y]=disparonolinealfzero(s0)
a=1;b=3;alpha=17;beta=43/3;
fun=@(s)Fdisparo(s,a,b,alpha,beta);
s0=fzero(fun,s0);
[T,Z]=ode45(@f,[a,b],[alpha;s0]);
Y=Z(:,1);
end

function y=Fdisparo(s,a,b,alpha,beta)
[~,YF]=ode45(@f,[a,b],[alpha;s]);
y=YF(end,1)-beta;
end

function dydt=f(t,y)
dydt=[y(2);1/8*(32+2*t.^3-y(1)*y(2))];
end

