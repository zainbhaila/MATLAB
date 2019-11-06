% Zain Bhaila
% Math 401
% Homework 2

%% 3.9
p1 = [6 ; 3 ; 1] % initial points
p2 = [4 ; 1 ; 1]
p3 = [7 ; 1 ; 1]
T1 = [ 1 0 -8 ; 0 1 -2 ; 0 0 1] % shift to origin
R = [cos(pi/3) -sin(pi/3) 0 ; sin(pi/3) cos(pi/3) 0; 0 0 1] % rotate
T2 = [ 1 0 8 ; 0 1 2 ; 0 0 1] % shift back
M = T2 * R * T1
p12 = M * p1 % transformed points
p22 = M * p2
p32 = M * p3
plot([6; 4; 7; 6], [3; 1; 1; 3]) % plot original
axis([0 10 -5 5])
figure(2)
plot([p12(1,:) ; p22(1,:) ; p32(1,:) ; p12(1,:)], [p12(2,:) ; p22(2,:) ; p32(2,:) ; p12(2,:)]) % plot rotated
axis([0 10 -5 5])

%% 3.20
T1 = [ 1 0 0 2 ; 0 1 0 0 ; 0 0 1 -4 ; 0 0 0 1]
RY = [cos(-2*pi/3) 0 sin(-2*pi/3) 0 ; 0 1 0 0 ; -sin(-2*pi/3) 0 cos(-2*pi/3) 0 ; 0 0 0 1]
T2 = [ 1 0 0 -2 ; 0 1 0 0 ; 0 0 1 4 ; 0 0 0 1]
M = T2 * RY * T1 %#ok

%% 3.23
A = [0 ; 1; sqrt(3)]
r = acos(1/sqrt(3)) % theta of A from y axis
RX1 = [1 0 0 0 ; 0 cos(r) -sin(r) 0 ; 0 sin(r) cos(r) 0 ; 0 0 0 1] % rotate A to z-axis
RZ = [cos(pi/3) -sin(pi/3) 0 0 ; sin(pi/3) cos(pi/3) 0 0; 0 0 1 0 ; 0 0 0 1] % rotate around A
RX2 = [1 0 0 0 ; 0 cos(-r) -sin(-r) 0 ; 0 sin(-r) cos(-r) 0 ; 0 0 0 1] % rotate A back to original
M = RX2 * RZ * RX1 %#ok final rotation matrix

%% 3.25

% part a
RX1 = [1 0 0 0 ; 0 cos(pi/2) -sin(pi/2) 0 ; 0 sin(pi/2) cos(pi/2) 0 ; 0 0 0 1] % rotate around x
P = [1 0 0 0 ; 0 1 0 0 ; 0 0 0 0 ; 0 0 (-1/10) 1] % project from x=10
RX2 = [1 0 0 0 ; 0 cos(-pi/2) -sin(-pi/2) 0 ; 0 sin(-pi/2) cos(-pi/2) 0 ; 0 0 0 1] % rotate back around x
M = RX2 * P * RX1

% part b
p1 = [1 ; 2 ; 3; 1] % (1,2,3)
p2 = [4 ; -1 ; 0; 1] % (4,-1,0)
p3 = [5 ; 2 ; 3 ; 1] % (5,2,3)
p1t = M * p1 * 10/8 % p1 projected
p2t = M * p2 * 10/11 % p2 projected
p3t = M * p3 * 10/8 % p3 projected

%% 3.28

% part a
P = [1 0 0 0 ; 0 1 0 0 ; 0 0 0 0 ; 0 0 -1/d 1] % projection matrix
PI = limit(P, d, inf) % limit as d approaches infinity

% part b
syms x y z;
p = PI * [x ; y ; z ; 1]
% the projection is just original x and y values
% this makes sense because from infinitely far away you would be
% looking directly down over the entire xy plane, thus seeing only
% the top of any object without any "horizontal" perspective