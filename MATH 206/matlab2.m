clear all
syms x t y(t) h(t)
p3 = diff(1-3*x^2-4*x^3-4*x^4, x)
p4 = diff(exp(7*x+5), x, 2)
p5 = subs(diff(nthroot(1+2*x^2+5*x^3-6*x^4, 6), x), x, 7.4)
p6 = eval(subs(diff((14-(16*(20/(6+t)))), t, 2), t, 9.6))
p7 = int((2*x^2+8*x+2)*cos(6*x+8),x)
p8 = int(cos(3*x+3),x,7,22)
f(x) = 7*x+8+4/x
p10 = f(9)+subs(diff(f(x),x),6)
p11 = eval(subs(diff(f(x),x),-5)) - 8* eval(subs(diff(f(x),x, 2),9))
p12 = diff((5*x+5)*f(x), x)
p13 = simplify(int(9*x+5+(8*x+7)*f(x),x))
g = @(x)1+2*x^2+9*x^3+7*x^4
p15 = simplify(diff(g(x),x)+g(9*x+5))
p16 = eval(subs(diff(nthroot(g(sin(x)), 3), x, 2), 4))
p17 = int(g(x), x, .09, .27) + int(x*g(4*x+5), x, .09, .28)
p18 = dsolve(diff(y) + y/t == 9*t + 2 + sin(t))
p19 = subs(dsolve(diff(h(t))+9*cos(t)==h(t), h(8) == 0), 0)
p20 = fplot(3*x^2+9*x+5)
p21 = 0
for v = 9:9:1935
    p21 = p21 + v
end
p22 = 1
while 8^p22 < 10^30
    p22 = p22 + 1
end
p23 = 34
value = zeros([1 25]);
value(1) = 3/6^2;
i = 2;
while i <= 25
    value(i) = value(i-1) * 3/6;
    i = i + 1;
end
for v = value
    p23 = p23 + v
end
p24 = 7
while p24 < 586543098
    p24 = p24.^7.9 + 7.26
end