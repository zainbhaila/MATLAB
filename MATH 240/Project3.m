% Zain Bhaila
% Math 240 Fall 2018 Project 3
% Section 0132
clc

%% Problem 0
format rat
clock

%% Problem 1
format short

% Problem 1(a)
A = [1 cos(0) cos(0).^2 cos(0).^3 ;  1 cos(0.1) cos(0.1).^2 cos(0.1).^3 ;
    1 cos(0.2) cos(0.2).^2 cos(0.2).^3 ; 1 cos(0.3) cos(0.3).^2 cos(0.3).^3]

% Problem 1(b)
rref(A)
det(A)

% Problem 1(c)
% The rref shows that Ax = 0 has only the trivial solution
% and the detA =/= 0, so A is invertible.

% Problem 1(d)
A = [1 cos(0) cos(0).^2 cos(0).^3 ;  1 cos(1) cos(1).^2 cos(1).^3 ;
    1 cos(0.2) cos(0.2).^2 cos(0.2).^3 ; 1 cos(0.5) cos(0.5).^2 cos(0.5).^3]
det(A)

% Problem 1(e)
% sin^2 + cos^2 = 1, so since 1 can be written as a linear 
% combination of sin^2 and cos^2, the set is linearly dependent

%% Problem 2
format rat
A = [0 -9 -3 -1 ; 2 -1 -1 -2 ; 1 13 4 2 ; 9 -3 -4 -9 ; 1 -2 -1 -1]

% Problem 2(a)
rank(A)

% Problem 2(b)
% rankA = dimColA = dimRowA = 3
% dimNulA = n - rankA = 4-3 = 1

% Problem 2(c)
rref(A)
N = [1/3 ; -1/3 ; 0 ; 0] % NulA
C = [0 -9 -1 ; 2 -1 -2 ; 1 13 2 ; 9 -3 -9 ; 1 -2 -1] % ColA
R = [0 2 1 ; -9 -1 -13 ; -3 -1 4 ; -1 -2 2] % RowA

%% Problem 3

% Problem 3(a)
v1 = [2;1;3;1]
v2 = [3;4;7;3]
v3 = [1;-3;8;5]
v4 = [0;5;5;3]
v5 = [-1;2;1;1]

% Problem 3(b)
A = [v1 v2 v3 v4 v5]
rref(A) % columns with pivots form a basis for ColA
B = [v1 v2 v3] % basis for the span

% Problem 3(c)
% basis of W = {p1, p2, p3}, dimW = 3

% Problem 3(d)
% W =/= P3 because W must have 4 linearly independent
% vectors to span P3, and it has 3 since dimW = 3

%% Problem 4

% Problem 4(a)
v1 = [2;2;-2;3;-12;1]
v2 = [4;1;2;-2;-3;2]
v3 = [0;2;1;-3;-4;0]
v4 = [4;-2;-1;5;0;2]

% Problem 4(b)
A = [v1 v2 v3 v4]
rref(A)
% v4 can be written as a linear combination of the other 3

% Problem 4(c)
% -2/5 * A1 + -4/5 * A2 + 9/5 * A3 = A4

%% Problem 5

% Problem 5(a)
P = [1 0 0 0 ; 1 2 0 0 ; 2 -1 3 0 ; 4 -1 0 1] % B -> e
Q = [1 0 0 0 ; 1 2 0 0 ; 2 -1 3 0 ; 4 -1 0 1] % C -> e

% Problem 5(b)
R = inv(Q) * P

% Problem 5(c)
x = Q * [0;0;0;1]

% Problem 5(d)
b = [0;3;2;1]
c = R * b