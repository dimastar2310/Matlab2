%Q1 main
clc
h = 0.2;
n = (15-0)/h;

y0 = 0;
x0 = 0; 
y = zeros(1,n);
x = zeros(1,n);
t = zeros(1,n);

y(1) = y0;
x(1) = x0;
t(1) = 0;
for i=2:n
    x(i) = x(i-1)+h*Q1Xtag(t(i-1),x(i-1),y(i-1));
    y(i) = y(i-1)+h*Q1Ytag(t(i-1),x(i-1),y(i-1));
    t(i) = t(i-1)+h;
end
plot(t,x,'b',t,y,'r');


% syms x(t) y(t); %%ninase ahrkah bli
% eqns = [diff(x,t) == t-x-2*y,diff(y,t) == y-4*diff(x,t)];
% cond = [ y(0) == y0,x(0) == x0];
% [x_symb,y_symb]=dsolve(eqns,cond) % symbolic sol 
% x_val = double(subs(x_symb, x)); % analytical sol x
% y_val = double(subs(y_symb, x));
% figure
% plot(x,x_val,'r',x,y_val,'b');
% 






