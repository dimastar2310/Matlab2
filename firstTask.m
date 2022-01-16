%הצג משיק בנקודה נתותה
clc,clear
syms x 
s = 0:0.1:10;
f = x^2; %symbolic thing
Y = subs(f,x,s); %kvar le symboli
%G = subs(diff(f),x,s);%esh li kaet vektor bar shinui
%she hu nigzeret ve ze le maspik

plot(s,Y,'g');

hold on

%plot(s,G)
axis([-10 10 -10 10])
xL = xlim;
yL = ylim;
line([0 0], yL);  %x-axis
line(xL, [0 0]);  %y-axis

grid on
x0 = 0.6; %נקדודה נתונה
m = subs(diff(f),x,x0); %shipua be nekuda netuna
y0 = subs(f,x,x0) %y in given postion ,its point y
y = m*(x-x0)+y0 %function in given point
res = subs(y,x,s); %the function that we need its vector
plot(s,res,'b'); %the red graph is answer 
title('f=x^2')
legend('y=x^2','y=6x/5-9/25')



