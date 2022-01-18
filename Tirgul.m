%%%%%y' = siny + 3x%%%%%%%%%
clc,clear
syms y(t) 

eqn = diff(y,t) == -2*y+cos(t)+1;

S = dsolve(eqn);%%pitaron klali

p = dsolve(eqn,y(0)==1.2);%%%pitaron prati

x = 0:0.2:3;

ytrue = double(subs(p,t,x));


%%%ode45 numeric solution%%%%%%
%y' = 2t
% tspan = [0 5];
% y0 = 0;
% [t,y] = ode45(@(t,y) 2*t, tspan, y0);

%y' = -2y+cos(t)+1

tspan = [0:0.2:3];
y0 = 1.2;
[t,y] = ode45(@(t,y) -2*y+cos(t)+1,tspan,y0);
plot(x,y,'-',x,ytrue,'rd');
hold on
a = 0;
b= 3;
dt = 0.2;
n = (b-a)/dt;
y = zeros(1,n);
time = zeros(1,n);%%%%[0 0.2 ,0.4,0.6]
y(1)=1.2;
time(1)=0;
for i=2:n
y(i) = y(i-1) + dt*ytag(time(i-1),y(i-1));

time(i) = time(i-1)+dt;

end

plot(time,y)

error = zeros(1,n);
for i=1:n
error(i) = (y(i)-ytrue(i));
end
figure
plot(error)

function z = ytag(t,y)

z = -2*y+cos(t)+1;
end 









