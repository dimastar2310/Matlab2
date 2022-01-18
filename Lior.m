clc
y0=0;
x0=0;
n=(5/0.1);
h=0.1;
y=zeros(1,n);
x=zeros(1,n);
t=zeros(1,n);
y(1)=y0;
x(1)=x0;
for k=2:n
    y(k) = y(k-1)+h*yTag(t(k-1),x(k-1),y(k-1));
    x(k) = x(k-1)+h*xTag(t(k-1),x(k-1),y(k-1));
    t(k) = t(k-1)+h;
end
plot(t,x,':rp',t,y,'--b+');
legend('X numeric','Y numeric','x Eul','y Eul','Location','best');



T=t;
syms x(t) y(t); %%ninase ahrkah bli
eqns = [diff(x,t) == t-x-2*y,diff(y,t) == -y-4*diff(x,t)];
cond = [ y(0) == 0,x(0) == 0];
[x_symb,y_symb]=dsolve(eqns,cond) % symbolic sol 
x_val = double(subs(x_symb,t, T)); % analytical sol x
y_val = double(subs(y_symb,t, T));
figure
plot(T,x_val,'r',T,y_val,'b');


function ff=xTag(t,x,y)
ff= t-x-2*y;
end
function ff=yTag(t,x,y)
ff=-y-4*xTag(t,x,y);
end
