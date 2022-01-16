%%q3 trying again newton method
clc,clear

fplot(@f,[-5,5])
xL = xlim;
yL = ylim;
line([0 0], yL);  %x-axis
line(xL, [0 0]);  %y-axis
grid on

x01 = -4;
x02 = -1.5;
x03 = 3;

res1 = newton(x01)
res2 = newton(x02)
res3 = newton(x03)


function z = newton(x0)
eps= 10.^-2;
diff = 1;
nmax = 25;
n = 0;
while diff>=eps && n<nmax 
  x1 = x0 - f(x0)/der_f(x0);
  diff = abs(x1-x0);
  x0 = x1; %%prev become current
  n = n+1;
end
z = x0;
end


function z = der_f(x)

z = 5*x.^4 - 12*x.^2 +14*x-2;
end


function z = f(x)

z = x.^5 -4*x.^3 + 7*x.^2 -2*x-3;

end 