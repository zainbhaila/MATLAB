% Zain Bhaila
%% task 1
syms x y z
int(int(int(x, z, 0, 9-x^2-y^2), y, 0, x), x, 0, 2)
%% task 2
clearvars
syms z r theta
int(int(int(z*r, z, 0, 10-r*cos(theta)), r, 0, sin(theta)), theta, 0, pi/2)
%% task 3
clearvars
figure(1)
syms y theta
rbar = [3*cos(theta), y, 3*sin(theta)];
fsurf(rbar(1), rbar(2), rbar(3),[0, pi, -1, 2])
view([10 10 10])
axis equal
%% task 4
clearvars
figure(2)
syms r theta
rbar = [r*cos(theta), r*sin(theta), 9-r];
fsurf(rbar(1), rbar(2), rbar(3),[0, 2, 0, 2*pi])
view([10 10 10])
axis equal
%% task 5
clearvars
figure(3)
syms x y
[x,y] = meshgrid(-5:1:5,-5:1:5);
quiver(x, y, .2*(x + y), .2*(x - y), 0)
%% task 6
clearvars
syms t x y
rbar = [cos(t), sin(t)];
f = x^2 + y^4;
mylength = @(u) sqrt(u*transpose(u));
mag = simplify(mylength(diff(rbar, t)));
sub = subs(f, [x,y], rbar);
int(sub*mag, t, 0, 2*pi)
%% task 7
clearvars
syms t x y z
rbar = [3*t, 1+t, 1+t];
f = x + y;
mylength = @(u) sqrt(u*transpose(u));
mag =  simplify(mylength(diff(rbar, t)));
sub = subs(f, [x,y,z], rbar);
int(sub*mag, t, 0, 1)
%% task 8
clearvars
syms t x y z
rbar = [0, -1*cos(t), sin(t)];
F = [y*z, y*z, y];
sub = subs(F, [x,y,z], rbar);
int(dot(sub, diff(rbar, t)), 0, pi)
%% task 9
clearvars
syms r theta x y z
rbar = [r*cos(theta), r*sin(theta), 10-r*cos(theta)-r*sin(theta)];
f = x^2 + y^2;
mylength = @(u) sqrt(u*transpose(u));
mag = simplify(mylength(cross(diff(rbar,r),diff(rbar,theta))));
subresult = subs(f,[x,y,z],rbar);
int(int(subresult*mag,r,0,1),theta,0,2*pi)
%% task 10
clearvars
syms r t x y z
rbar = [r*cos(t), r*sin(t), r^2];
F = [y, -1*x, z]; 
kross = simplify(cross(diff(rbar,r),diff(rbar,t)));
sub = subs(F,[x,y,z],rbar);
int(int(dot(sub,kross),r,0,3),t,0,2*pi)
