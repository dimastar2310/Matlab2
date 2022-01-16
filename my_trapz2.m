%just integral
function z = my_trapz2(f1,a,b,n)
x=linspace(a,b,n);
y1 = f1(x);
z = trapz(x,y1);

end