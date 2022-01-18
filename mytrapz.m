function z = mytrapz(f1,f2,a,b,n)
x=linspace(a,b,n);
y1 = f1(x);
y2 = f2(x);
z = trapz(x,y1-y2);

end