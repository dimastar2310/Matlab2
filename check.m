clc ,clear
T = 0:0.1:30;
syms x(t) y(t); %%ninase ahrkah bli
eqns = [diff(x,t) == t-x-2*y,diff(y,t) == -y-4*diff(x,t)];
cond = [ y(0) == 0,x(0) == 0];
[x_symb,y_symb]=dsolve(eqns,cond) % symbolic sol 
x_val = double(subs(x_symb, t,T)); % analytical sol x
y_val = double(subs(y_symb,t, T));

plot (T,x_val,'g*' );
hold on
grid on
plot (T,y_val,'b*'); 