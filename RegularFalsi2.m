%%%%regula falsi%%%%%%
clc,clear

x = -5:10^-2:5;
y = f(x);
plot(x,y,'b');
grid on
axis([-2 2 -2 2]);
xl = xlim;
yl = ylim;
line([0 0],yl)
line(xl,[0 0])
hold on

res = RegularFalsi(@f,-1,1,0.001)



res2 = div5(@f,-1,1,0.001)
plot(res,0,'r*',res2,0,'g*')



function z = RegularFalsi(f,a,b,eps)
   %lets put mone
   k = 0;
   c=0;
while abs(b-a)>eps && k<20 
    c= (f(a)*b-f(b)*a)/(f(a)-f(b));
     if ( f(c) == 0 )
      z=c;
       break;
      elseif f(a)*f(c)<0
          b = c;
      else 
          a = c;
      end
      k = k+1;
end
z=c;
end

      
      


function z = f(x)

z = exp(-x).*sin(x);

end