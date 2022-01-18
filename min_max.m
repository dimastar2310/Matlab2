%%%%%%%%%min/max%%%%%%%%%%%%%%%

clc,clear
x=-5:0.1:6;
y=(x.^4-0.5*x.^3-28*x.^2+140);
plot(x,y,'-'), grid
hold
[a,b]=fminbnd(@mf,-6,6);

[c,d]= fminbnd(@maf,-6,6);
max = -d;
plot(a,b,'r*',c,max,'gd')

function y=maf(x)
y=-(mf(x));
end

function y=mf(x)
y=x.^4-0.5*x.^3-28*x.^2+140;
end