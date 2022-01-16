%%%%%mivhan1 sheela4%%%%%%%%%%%



k = 0.00006;


t = 0:0.1:3;
n = size(t);
y= zeros(1,n);
y(1) = 100;


for i=1:n
    y(i) = y(i-1) + 











function z = Ytag(t,y,k)
   z = k*y*(5000-y);

end