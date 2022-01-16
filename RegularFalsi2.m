%%%%regula falsi%%%%%%
clc,clear

%x = -5:10^-2:5;
y = @f;
ezplot(y,[-5,5]);
grid on
axis([-10 10 -10 10]);
res = RegularFalsi(y,-1,0,10^-4)



function z = RegularFalsi(f,a,b,eps)
   %lets put mone
   k = 0;
while abs(b-a)>eps && k<100 
      c= (f(a)*b-f(b)*a)/(f(a)-f(b));
      if f(a)*f(c)<0
          b = c;
      else 
          a = c;
      end
      k = k+1;
end
z = a;
end
      
      


function z = f(x)

z = x.^5-4*x.^3+7*x.^2-2*x-3;

end