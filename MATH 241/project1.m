syms x t
assume(t, 'real')
solve(x^4 - x^2 - 2*x^2 == 0, x) % task 1
subs((1/sqrt(x)) + exp(1)^(2*x) + x^3, -2)  % task 2
figure(1)
fplot(sin(x^2 + 1) + 2^(-x)) % task 3
figure(2)
fplot(x^2 + x*sin(x), [-2*pi, 2*pi]) % task 4
subs(diff((x + 1)/(x^2 + 2)), x, -1/2) % task 5
int(x + (x^2)*sin(x)) % task 6
int((x + 3)*3^x, -1, 1) % task 7
figure(3)
fplot((t/10)*sin(t) + cos(t), (t/5)*cos(t), [0, 4*pi]) % task 8
r = [t^3, exp(1)^t, 1]  %#ok task 9
diff(r)
int(r, 0, 1)
P = [2, -1, 3]; % task 10
Q = [0, 7, 9];
R = [4, -9, -3];
S = [7, -6, -6];
dot(P - Q, R - S)
P = [1, -2, 3]; % task 11
Q = [2, -1, 3];
n = [2, 2, 3];
dot(P - Q, n)
P = [5, 0, 2]; % task 12
Q = [1, 1, 1];
R = [0, 1, -2];
S = [1, -2, -0];
abs(dot(P - S, cross(P - Q, P - R)))/norm(cross(P - Q, P - R)) %#ok
r = [cos(t), cos(t), sqrt(2)*sin(t)]; % task 13
T = simplify(diff(r)/norm(diff(r))) %#ok
N = simplify(diff(T)/norm(diff(T))) %#ok
figure(4)
plot3(1, 2, 3, 'o', 2, -3, 0, 'o', -3, 5, 1, 'o') % task 14
view([10 10 10])
figure(5)
fplot3(3*sin(t), 1/t, 2*cos(t), [0.1, 2*pi]) % task 15
view([10 10 10])
figure(6)
fplot3(t, t^2, (9-t^2), [-3,3]) % task 16
view([10 10 10])
figure(7)
quiver3(-1, 4, 2, 2, -3, -1) % task 17
daspect([1 1 1])
view([10 10 10])
figure(8)
points = [16 0 0; 0 8 0; 0 0 4]; % task 18
patch(points(:,1), points(:,2), points(:,3), [0.95 0.95 0.95]);
view([10 10 10])
figure(9)
points = [4 0 0; 0 3 0; 0 3 10; 4 0 10]; % task 19
patch(points(:,1), points(:,2), points(:,3), [0.95 0.95 0.95]);
view([10 10 10])
figure(10)
points = [0 -2 0; 0 -2 10; 10 -2 10; 10 -2 0]; % task 20
patch(points(:,1), points(:,2), points(:,3), [0.95 0.95 0.95]);
view([10 10 10])