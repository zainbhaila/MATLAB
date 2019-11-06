clear all
syms x t s b a w
p3 = sin(25)
p4 = sind(cosd(26))
p5 = cos(cos(48))
p6 = acot(sin(29))
p7 = log(306)/log(5) * log(38)/log(9)
p8 = solve(19*x + 7 == 4*x + 2, x)
p9 = solve(1 - 3*x.^2 - 5*x.^3 + 6*x.^4 == 1 - 6*x.^2 + 3*x.^3 + 4*x.^4, x)
p10 = solve(x.^2 == 391.^2 + 159.^2 - 2*391*159*cosd(49))
p11 = simplify((14 - (12 + (19*(7/t)))) + (9/(4+(2*(5-t)))))
[p12s, p12t] = solve([s*t - 21*s == 24, t - 34 * s == 43], [s, t])
p13 = nthroot(35, 9)
p14 = 41 - 6*p13
p15 = sqrt(p14/9)
p16 = cos(8*p15)
p17 = solve(5*x.^2 + b*x + 9 == 0, b)
p18 = solve(8*a*w - w - 3/w == 7*a, w)
f(x) = 3*x.^2 + 9*x + 5
p20 = f(5.8)*f(8) + f(3.9 + f(9)) + f(f(8)*f(5))
p21 = simplify(f(2*x.^2+7*x+2))
p22 = solve(f(x) == 5, x)
p23 = solve(4*f(8.08*x) == 4 + f(x + 0.3), x)
g(x) = 3/x
h(x) = 4*x+6
p26 = solve(8*g(x) == h(3*x), x)
p27 = solve(g(h(x)) == h(g(x)), x)
p28 = vpasolve(6*x.^5 + 4*x.^4+7*x.^3+7*x.^2+4*x+7 == 0, x)
p29 = vpasolve(0 == x/5 + cos(x/5 - 3) + exp(1).^(x/5-3) - 3, x, 10)
p30 = vpasolve(0 == cos(x) + 6.5.^(x-4), x, 4)