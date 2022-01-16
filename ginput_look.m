clc,clear
x = 0:0.01:5;
y1 = exp(-x).*sin(x);
y2 = x.^-0.1-0.87;
plot(x,y1,x,y2)
grid on

[X,Y] = ginput()
