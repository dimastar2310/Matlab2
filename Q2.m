%%%mivhan1 Q2%%%%%
clc,clear
b = 0;
a = 2;
c=(a+b)/2;
eps = 10^-4;

while ((a-b)>eps)
    if (f(c)*f(a)<0)
    b=c
    else 
    a=c
    end
c=(a+b)/2
end

disp(c)

function [z] = f(x) 
z = x.^2-2;
end