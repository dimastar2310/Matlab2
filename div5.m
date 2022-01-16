function z = div5(f,a,b,eps)

L = b-a;
while L> eps

c = (a+b)/2;
if f(c)*f(a)<0
     b = c;

else %%f(c)*f(a)>0
     a = c;
  end
  L  = b-a;
end
z = (a+b)/2;

end