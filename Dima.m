%%%%clc%%%%
x=-2:0.01:0;

y = abs(x);
y2 = -abs(x);


yres = 0;
        xres = 0;
       for i=1:size(x)
        if abs((y(i)-y2(i)))<0.05
        yres = y(i);
        xres = x(i);
        end
       end
       yres 
       xres

plot(x,y,'r',x,y2,'b')

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