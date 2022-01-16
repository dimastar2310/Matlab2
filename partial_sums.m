%%%partial sum%%%%
clc
actual_s = (pi^2)/12;
n = input(' n=');
for k=1:n
    a(k) = (-1)^(k+1)*k^(-2);
end
s = sum(a);
format long
s
actual_s

  