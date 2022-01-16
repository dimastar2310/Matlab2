%%taylor series%%%
%%first symbolic%%
syms x

f2 = sin(x)/x;
%%buth thats macloren ,kiruv polinomiali
f2_new = taylor(f2,x,0)
ezplot(f2);
grid on;
hold on;
ezplot(f2_new)
axis([-10 10 -10 10])
title('y=sin(x)/x','y=x^5/120 -x^3/6+x')
ylabel('y ציר')
xlabel('x ציר')
legend('y=sin(x)/x','y=x^5/120 -x^3/6+x')