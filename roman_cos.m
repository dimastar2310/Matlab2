%%%%fzero of Roman%%%%
x= -4*pi:0.01:4*pi;

plot(x,cos(x));
grid on 
hold 
for i=-4*pi:pi:3*pi
  x = fzero('cos',i)
  plot(x,cos(x),'bd')
  hold on
 end