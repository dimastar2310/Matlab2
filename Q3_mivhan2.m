%trapezimm sin(x^2) 0 to 1.6
clc
n=16;
x=linspace(0,1.6,n);
y= sin(x.^2);
trapz(x,y);
x=linspace(0,1,n);
y2 = x.^2;
y3 = sqrt(x);

plot(x,y2,'g',x,y3,'b');
grid on
trapz(x,y3-y2)

function z = mytrapz(f1,f2,a,b,n)

z = trapz(x,f1-f2);
end

function z = f1(x)
z = x.^2;
end

function z = f2(x)
z = sqrt(x);
end