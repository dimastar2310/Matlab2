%%%integral by Yoha%%%%'
clc,clear all
x = 0:0.01:1;
y = x.^2;
y2 = sqrt(x);
dx = 0.001;
plot(x,y,'-',x,y2,'b');

format long
s1 = sum(dx*y);
s2 = sum(dx*y2);

s = s2-s1
