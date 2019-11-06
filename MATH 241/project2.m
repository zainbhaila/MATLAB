% Zain Bhaila
syms x y f(x,y) L g(x,y);
%% task 1
diff(sin(x^2*y)/(x*y^2), y)
%% task 2
diff(diff((x^3 + 2*y^2)/sqrt(x + y),y),x)
%% task 3
jacobian(x/y^2 - x^2*exp(1)^y, [x y])
%% task 4
subs(jacobian(x^2*2^(x*y), [x y]), {x, y}, {1, -2})
%% task 5
a = [3 -2];
dot(a/norm(a), subs(jacobian((x*y)/(x + 3*y), [x y]), {x, y}, {1, -4}))
%% task 6
f(x,y) = (y - 5) * log(x*y^2 + x);
[xsoln, ysoln] = solve(jacobian(f, [x y])) %#ok
%% task 7
f(x,y) = (x^3 + y^3 - 6*x*y);
[xsoln, ysoln] = solve(jacobian(f, [x y])) %#ok
%% task 8
f(x,y) = x*y;
g(x,y) = x^2 + y^2 + 4*x - 20;
firstpart = jacobian(f, [x y]) - L*jacobian(g, [x y]);
[Lsoln, xsoln, ysoln] = solve([firstpart, g]) %#ok
subs(f(x,y), {x, y}, {xsoln, ysoln})