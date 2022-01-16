%%%%%mivhan1 sheela4%%%%%%%%%%%


clc ,clear all

a = 0;
b = 15;
dt = 0.1;
n = (b-a)/dt;%%150 points
y= zeros(1,n);
x = zeros(1,n);
y(1) = 100;
x(1) = 0;


for i=2:n
    y(i) = y(i-1) + Ytag(y(i-1));
    x(i) = x(i-1) + dt;
end

plot(x,y)
title('numeric solution')
format bank
sol1 = y(5)
sol2 = x(19)*10 %%%matai mispar hadagim yahze et ha4000

% syms f(t)
% %ytag = 0.00006*y*(5000-y);
% p = dsolve(diff(f,t)==0.00006*f*(5000-f),f(1)==100)
% 
% p2 = solve(p==4001)
% 

y2 = (5000*exp(0.3*x))./(49+exp(0.3*x));

error = zeros(1,n);
for i=1:n
error(i) = y2(i)-y(i);
end
figure
plot(x,error)
title('error graph')









function z = Ytag(y)
   z = 0.00006*y*(5000-y);

end