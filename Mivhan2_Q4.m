%%%%%Test2,Q4%%%%%%%%%%


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
sol = solve(exp(1/10*log(1/5)*time)*50==1);
%%%24 minuntes%%%%

ytrue = exp(1/10*log(1/5)*x)*50;

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
