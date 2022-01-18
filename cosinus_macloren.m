  
%ok lets do cosinus
 clc,clear
        a= 0;
        b= 8;
        x= linspace(a,b,100);
        format short
        y= f(x);
        plot(x,y)
        point = f(pi/3)
%         grid on
%         axis([-5 5 -5 5])
%         xl = xlim;
%         yl = ylim;
%         line([0 0],yl);%x-axis
%         line(xl,[0 0]);%y-axis

% function z = f2(x) 
% z = exp(x);
% end


function [ Sn] = f (x)
%cos(x)
n = 0; % First value of n
an = 0; % First term in the series
Sn = an; % First sum of the terms
E = inf; % Some arbitrary big value
while E > 0.000001 % While the estimated error is BIGGER than tolerance

 an = ((-1)^n*(x.^(2*n)))./factorial(2*n); % Next term in the series
 Sn = Sn + an;
 E = abs(an/Sn); % Estimated error
 n = n + 1; % Increment n

end
 end