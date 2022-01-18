        clc,clear
        a= 0;
        b= 5;
        x= linspace(a,b,100);
        format short
        y= f(x);
        plot(x,y)
        grid on
        axis([-5 5 -5 5])
        xl = xlim;
        yl = ylim;
        line([0 0],yl);%x-axis
        line(xl,[0 0]);%y-axis

% function z = f2(x) 
% z = exp(x);
% end


function [ Sn] = f (x)
%3^X Summary of this function goes here
% Detailed explanation goes here
%x = input('Enter the value for x for taylor series of 3^x = ')
n = 0; % First value of n
an = 1; % First term in the series
Sn = an; % First sum of the terms
E = inf; % Some arbitrary big value
while E > 0.000001 % While the estimated error is BIGGER than tolerance
 n = n + 1; % Increment n
 an = x.^n * log(3)^n/ factorial(n); % Next term in the series
 Sn = Sn + an;
 E = abs(an/Sn); % Estimated error

end
 end

