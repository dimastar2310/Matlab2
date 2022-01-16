clc
syms  y(t) k;
%lets find pitaron klali
y0 = dsolve(diff(y) == -k*y)
%y0 = c1*e^(-kt) analiti
%lets find c
y1 =  dsolve(diff(y) == -k*y,y(0) == 2)
%ok c is 2 
%y1 = 2*e^(-kt)
%ok now lets find k
%y2 = dsolve(y == 2*exp(-k*t),y(4)==1) le yaavod zarih subs
y2 = 2*exp(4*k)==1 %eqn representation for syms
k = solve(y2)
%our function is v = 2*exp(log(2)/4)*t)
%when the speed was 0.25?

y3 = 2*exp(k*t)==0.25
tstar = solve(y3) %ok 12

%now what is the position when v = 0?

a= 0; %first minute
b= 30;%last minute
h= 0.1;
n=(b-a)/h; %(30-0)/0.1=300

y= zeros(1,n); %empty matrix for the values of the  speed v vector
x= zeros(1,n); %empty matrix for the values of the seconds
y(1)=2; %speed of boat in first
x(1) = 0; %time at first
for i=2:n
 y(i)= y(i-1) + h*f1(y(i-1)); % by euiler
 % for f1 Please see f1.m
 x(i)=x(i-1)+h;
end
ytrue = exp(1/4*log(1/2)*x); %analtitic solution lets see the plot 
grid on
plot(x,y,':rp',x,ytrue,'--b+')

legend('numerical solution','analytical solution')
errors = zeros(1,n); %empty array for errors between
%calculations
for i=1:n
 errors(i)=y(i)-ytrue(i); %caclculate each error
end
figure
plot(errors) %display errors on second graph
legend('errors')



%our function y' = -ky
function z = f1(y)
z = 1/4*log(1/2)*y;
end









