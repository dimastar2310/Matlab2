clc ,clear
a=1;
b=2;
k=0;
x = (a+b)/2;
while (b-a>eps)&(k<20)

 if x^2>2
 b=x;
 else
 a=x;
 end
 k=k+1;
end
x