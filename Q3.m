%Q3 Neuton method 
%will first find the roots with roots method and the then each point 
clc
x = -5:0.1:5;
vec = f(x);
plot(x,vec,'--g')
xL = xlim;
yL = ylim;
line([0 0], yL);  %x-axis
line(xL, [0 0]);  %y-axis
grid on
%[-4,-2]
r1 = [-4 -2];
r2 = [-2,0];
r3 = [0,5];
res1 = 0;
res2 = 0;
res3 = 0;
syms f2 t
f2(t) = t^5 -4*t^3 + 7*t^2 - 2*t - 3;
g = diff(f2) %nigzeret
%%ok now lets do neuton metod
g2 = ftag(x);
l = length(g2);
res1 = nuton(-4,vec,g2,l);
res2 = newton2(-4,vec,g2,l)
res3 = newton3(-4,f2,g);

function z = newton3(x1,f,g)
x(1) = x1; %first value -4
eps = 10.^-2;
for i=1:1000
    x(i+1) = x(i) - f(x(i))/g(x(i));
    diff = abs(x(i+1)-x(i));
    check = abs(f(x(i+1)))
    if(check<eps) 
    z= double((x(i+1)));
    break;
    end
end
z= 0;
end



function z = newton2(x,y1,y2,n)
x1(1)=x;
eps = 10.^-4;

for i = 1:n-1

    x1(i+1) = x1(i) - y1(i)/y2(i);
    d = abs(x1(i+1)-x1(i));
    if  d<eps
     z = double(x1(i)); 
     break;
    end
end
z=0;
end

function z = nuton(x,y1,y2,l)
%%we got 2 memory of 2 function below last 
%%other i-1
diff = 1;
eps = 10^-2;
y = 0;
i =1;
while diff>eps && i<l
y = x- y1(i)/y2(i);
diff = abs(y-x);
x= y;
i = i+1;
end
z = x;
end
 



function z = ftag(x)

z = 5*x.^4 - 12*x.^2 +14*x-2;
end


function  z = f(x)
z = x.^5 -4*x.^3 + 7*x.^2 -2*x-3;
end