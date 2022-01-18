
 clc,clear
        a= 0;
        b= 8;
        x= linspace(a,b,100);
        format short
        y= fCosbyAn(x);
        plot(x,y)
        point = fCosbyAn(pi/3)




function Sn = fCosbyAn(x)
E = inf;
n = 0;
an = 0;
Sn = 0;
while (E>0.00001)
 an = ((-1)^n*(x.^(2*n)))./factorial(2*n); % Next term in the series
 Sn = Sn + an;
 E = abs(an/Sn); % Estimated error
 n = n + 1; % Increment n
end
end