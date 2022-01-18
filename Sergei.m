 clc,clear
      
        a= -2;
        b= 2;
        x= linspace(a,b,100);
        format short
        y= g(x);
        plot(x,y)
        y2 = 2*x;

        %%%checkin diff
      
        yres = 0;
        xres = 0;
       for i=1:100
        if abs((y(i)-y2(i)))<0.05
        yres = y(i);
        xres = x(i);
        end
       end
       yres 
       xres


              

       plot(x,y,'r',x,y2,'b')
       grid on
       axis([-2 2 -2 2])
       xl = xlim;
       yl = ylim;
       line([0 0],yl);%xaxis
       line(xl,[0 0]);


function Sn = g(x)

E = inf;
n = 0;
an = 0;
Sn = 0;
i = 0;
while (E>0.001)
 an = (-1).^n*((2.^i*(x.^(4*n+i)))./factorial(2*n+i)); % Next term in the series
 Sn = Sn + an;
 E = abs(an/Sn); % Estimated error
 n = n + 1; % Increment n
 i = i+1;

end
end