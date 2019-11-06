% Zain Bhaila
% Math 240 Fall 2018 Project 1
clc

%% Problem 0
format rat
clock

%% Problem 1

% Problem 1(a)
A = [1 -3 -1 6 ; -2 8 4 -11 ; 3 -19 -10 16]

% Problem 1(b)
A(2,:) = A(2,:) + 2 * A(1,:);
A(3,:) = A(3,:) + -3 * A(1,:);
A(3,:) = A(3,:) + 5 * A(2,:)

% Problem 1(c)
A(2,:) = A(2,:)/2;
A(3,:) = A(3,:)/3;
A(1,:) = A(1,:) + 3 * A(2,:);
A(1,:) = A(1,:) + -2 * A(3,:);
A(2,:) = A(2,:) + -A(3,:)

% Problem 1(d)
% x1 = 11/2, x2 = -1/2, x3 = 1

%% Problem 2

% Problem 2(a)
B = [1 1 -1 -1 5 -8 ; -6 -8 4 0 -34 -10 ;
        2 2 -2 1 7 11 ; 4 0 -8 -13 9 -121]

% Problem 2(b)
B(2,:) = B(2,:) + 6 * B(1,:);
B(3,:) = B(3,:) + -2 * B(1,:);
B(4,:) = B(4,:) + -4 * B(1,:);
B(4,:) = B(4,:) + -2 * B(2,:);
B(4,:) = B(4,:) + -B(3,:)

% Problem 2(c)
B(3,:) = B(3,:)/3;
B(2,:) = B(2,:)/-2;
B(2,:) = B(2,:) + -3 * B(3,:);
B(1,:) = B(1,:) + B(3,:);
B(1,:) = B(1,:) + -B(2,:)

% Problem 2(d)
B_b = [1 1 -1 -1 5 -8 ; -6 -8 4 0 -34 -10 ;
        2 2 -2 1 7 11 ; 4 0 -8 -13 9 -121];
rref(B_b)

% Problem 2(e) 
% x3, x5 are free variables
% x1 = -1 + x5 + 2 * x3
% x2 = 2 - 5 * x5 - x3
% x4 = 9 + x5

%% Problem 3
format short
A = [ 3.5 3.5 7.0 6.3 ; 1.8 2.0 1.4 2.0 ; 1.6 6.4 0.8 5.6];

% Problem 3(a)
x = rref(A)

% Problem 3(b)
format rat
x

% Problem 3(c)
% x1 = -17/45, x2 = 8/9, x3 = 29/45

%% Problem 4
format short

% Problem 4(a)
% 270 * x1 + 51 * x2  + 70 * x3 = 400
% 10 * x1  + 5.4 * x2 + 15 * x3 = 30
% 2 * x1   + 5.2 * x2 + 0 * x3  = 10
A = [270 51 70 400 ; 10 5.4 15 30 ; 2 5.2 0 10]
rref(A)

% Problem 4(b)
% 51 * x2  + 70 * x3 + 260 * x4 = 400
% 5.4 * x2 + 15 * x3 + 9 * x4   = 30
% 5.2 * x2 + 0 * x3  + 5 * x4   = 10
B = [51 70 260 400 ; 5.4 15 9 30 ; 5.2 0 5 10]
rref(B)

%% Problem 5

% Problem 5(a)
A = [1 -2 4 ; -2 1 5 ; 3 2 1]
rref(A)

% Problem 5(b)
% If a vector is in the span of some vectors, it can be 
% written as a a linear combination of those vectors. 
% Since the matrix is inconsistent, this is not true.

% Problem 5(c)
% They are linearly independent, since any linear combination
% of the three vectors set equal to the zero vector will
% only have the trivial solution.

%% Problem 6

% Problem 6(a)
syms a b

% Problem 6(b)
A = [3 -2 a ; 4 5 b]
rref(A)

% Problem 6(c)
% w1 = (5*a)/23 + (2*b)/23, w2 = (3*b)/23 - (4*a)/23

%% Problem 7
format rat

% Problem 7(a)
A = [1 3 0 1 6; 1 1 -1 3 2;
        -1 2 2 -3 2; 1 -2 3 -2 1]
rref(A)

% Problem 7(b)
% The fifth vector listed in the set can be written as a
% linear combination of the first four vectors, so it is
% in the span of the first four, thus linearly dependent.

% Problem 7(c)
% Let the vectors be named v1, v2, v3, v4, v5. 
% -13/5 * v1 + -34/25 * v2 + 2/25 * v3
% + 17/25 * v4 + v5 = 0

% Problem 7(d)
% Theorem 8 - If a set contains more vectors than there are 
% entries in each vector, then the set is linearly dependent.
% That is, any set {v1; ... ; vp} in Rn is linearly 
% dependent if p > n.
% There are 5 vectors and 4 entries in each vector. 
% p=5 > n=4

% Problem 7(e)
% Yes, because for the first four vectors, there is no 
% linear combination that can be written where the result
% is the zero vector except for the trivial solution.