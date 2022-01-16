%Q1_Mivhan2
clc

h = 0.1;
n = (5-0)/h + 1;

y0 = 0;
x0 = 0; 
y = zeros(1,n);
x = zeros(1,n);
t = zeros(1,n);

y(1) = y0;
x(1) = x0;
t(1) = 0;
for i=2:n
    x(i) = x(i-1)+h*Q1Xtag2(t(i-1),x(i-1),y(i-1));
    y(i) = y(i-1)+h*Q1Ytag2(t(i-1),x(i-1),y(i-1));
    t(i) = t(i-1)+h;
end
plot(t,x,'b',t,y,'r');

