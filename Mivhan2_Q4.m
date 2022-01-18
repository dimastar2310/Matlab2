%%%%%Test2,Q4%%%%%%%%%%

clc,clear all
syms v(t) k t


eqns = diff(v,t)==-k*v;
tnai = v(0)==50;
klali = dsolve(eqns);
%%%finding c
prati = dsolve(eqns,tnai)
%%%finding k 
tnai2 = 50*exp(-k*10)==10;
kk = solve(tnai2);

v13 = subs(exp(1/10*log(1/5)*t)*50,t,13)


a = 0;
b = 30;
dt = 0.1;
n=(b-a)/dt %%%30-0/0.1 maby 300

%%%%%WE NEED 0.1 THEN 0.2 ,0.3 .....x purpuse for plot

y = zeros(1,n);
x = zeros(1,n);
y(1) = 50; %%y(0)= 50
x(1)= 0;
for i=2:n
y(i) = y(i-1) + dt*Vtag(y(i-1));
x(i)=x(i-1)+dt; 
end


grid on

syms time
format short
sympref('FloatingPointOutput',true);
disp('after 13 minutes')
y(130)
%%%24 minuntes%%%%

ytrue = exp(-kk*x)*50;

plot(x,y,'r',x,ytrue,'b')

error = zeros(1,n);

for i=1:n
error(i) = ytrue(i)-y(i);

end

figure
plot(error)



function z = Vtag(y)

z = 1/10*log(1/5)*y;


end