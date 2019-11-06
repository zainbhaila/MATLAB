% Zain Bhaila
% Math 401
% Homework 1

%% 2.2
M = [.3157 .947; .6314 .1263] % consumption matrix
A = eye(2) - M % I - M
eig(A) % eigenvalues of I - M
% since I - M is not invertible (eigenvalue of 0) and d=0
% the answer is any multiple of p where p is an eigenvector of M associated
% with lambda = 1
[V,D] = eig(M) % eigenvalues and eigenvectors of M
p1 = V(:,1) % production vector 1
p2 = p1 * 3 %#ok production vector 2

%% 2.5
M = [.22 .15 ; .16 .26] % consumption matrix

% part a
A = eye(2) - M % I - M
eig(A) % eigenvalues of I - M
% I - M is invertible and d =/= 0
% thus p = (I-M)^-1 * d
d = [120 ; 150] % external demand
p = A\d % (I-M)^-1 * d

% part b
M * p %  internal demand
% the economy is not efficient as a significant portion of the production
% goes towards internal demand

% part c
M2 = [.022 .015 ; .016 .026] % consumption matrix
A2 = eye(2) - M2 % I - M
eig(A2) % eigenvalues of I - M
% I - M is invertible and d =/= 0
% thus p = (I-M)^-1 * d
d2 = [120 ; 150] % external demand
p2 = A2\d2 % (I-M)^-1 * d
M2 * p2 % internal demand
% this economy is efficient, as a relatively small
% amount of product is used for internal demand

% part d
B = inv(A) % (I-M)^-1
% if external demand for sector 1 changes by 1 then the first entry
% in column 1 of B indicates the change of production that must occur in
% sector 1 to keep up with demand
% if external demand for sector 2 changes by 1 then the first entry
% in column 2 of B indicates the change of production that must occur in
% sector 1 to keep up with deman

%% 2.9
M = [.1 .06 ; .05 .12] % consumption matrix

% part a
eig(M) % show that infinite sum is valid
(eye(2) + M + M^2 + M^3 + M^4 + M^5) == (eye(2) + M + M^2 + M^3 + M^4) %#ok returns zero matrix if equal to the fourth digit

% part b
A = eye(2) + M + M^2 + M^3 + M^4 + M^5 %#ok matrix from part a

% part c
% we can say that (I-M)^-1 is approximately the same as
% the matrix A found in part b

%% 2.17

% part a
% you can find M by inverting (I-M)^-1, then
% you subtract I from the result, then multiply by -1
% M = (((I-M)^-1)^-1 - I) * -1

% part b
A = [1.06 .02 .04 ; .02 1.06 .09 ; .11 .02 1.03] % (I-M)^-1
M = (inv(A) - eye(3)) * -1 %#ok consumption matrix

%% 2.19

% part a
syms x y;
M = [.1 .2 ; x .05] % consumption matrix
a = det(eye(2) - M) % determinant of I - M
solve(a == 0, x) % upper bound for x
% for x to be valid, it must be less than 4.275 (171/40)
% this is because for an economy too be sensible the determinant must be a
% positive number

% part b
M = [.1 y ; x .05] % consumption matrix
det(eye(2) - M) % determinant of I - M
% x * y must be less than 0.855 (171/200)