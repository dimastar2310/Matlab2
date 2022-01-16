%%%bisection as method
clc,clear
%x = -2:10^-3:-1;
f = @(x) x.^2 - 2;
t = div5(f,-2,-1,10^-10)

ezplot(f,[-10 10])
axis([-10 10 -10 10])
grid on



