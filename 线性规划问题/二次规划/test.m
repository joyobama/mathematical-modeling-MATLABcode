%���÷�����  �� 2-10

function g = test(x)
M = 5000;
f = x(1)^2 +x(2)^2 +8;
g = f- M*min(x(2),0)- M*min(x(2),0) - M*min(x(1)^2 - x(2),0)+ M*abs(-x(1) - x(2)^2+ 2);
%������������ʿ

[x,y] = fminunc('test',rand(2,1));



