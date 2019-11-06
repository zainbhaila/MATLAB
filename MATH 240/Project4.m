% Zain Bhaila
% Math 240 Fall 2018 Project 4
% Section 0132

%% Problem 0
format short
clock

%% Problem 1
A = [345 -654 -928; 84 -158 -228; 66 -126 -176]

% Problem 1(a)
[P,D] = eig(A)

% Problem 1(b)
A == P * D * inv(P) %#ok

% Problem 1(c)
% lambda = 6, v = [ .957 .2051 .2051 ]
% lambda = 1, v = [ -.9456 -.291 -.1455 ]
% lambda = 4, v = [ .9577 .1596 .2394 ]

%% Problem 2
A = [-65 -39 -15; 100 60 23; 22 13 6]

% Problem 2(a)
A2 = A^2
A3 = A^3
A4 = A^4
A5 = A^5
A6 = A^6
A7 = A^7
A8 = A^8
% the values repeat after intervals of 4

% Problem 2(b)
[P,D] = eig(A) %#ok

% Problem 2(c)
D
D2 = D^2
D3 = D^3
D4 = D^4
% all the values have the same magnitude
% the first and third powers have the same eigenvalues
% the fourth power has one unique real eigenvalue
% the second power has all real eigenvalues

% Problem 2(d)
% A^10000001 = A = [-65 -39 -15; 100 60 23; 22 13 6]

%% Problem 3
A = [3 1 ; 0 3]

% Problem 3(a)
[P,D] = eig(A)

% Problem 3(b)
A == P * D * inv(P) %#ok

% Problem 3(c)
A_space = null(A - 3*eye(2))

% Problem 3(d)
% No, there is not a basis. 
% A must have 2 distinct eignvalues in order to be 
% diagonalizable. A only has one distinct eigenvalue, and
% thus is not diagonalizable.

%% Problem 4
A = [ 3 0 3 ; -1 -1 -2 ; 0 1 2 ; 5 2 0]

% Problem 4(a)
dot(A(:,1),A(:,2))
dot(A(:,3),A(:,3))

% Problem 4(b)
transpose(A) * A

% Problem 4(c)
% The i,j entry of A^T * A is the dot product of the 
% ith column and jth column of A.

% Problem 4(d)
% The i,j entry of A * A^T is the dot product of the 
% ith row and jth row of A.

% Problem 4(e)
A * transpose(A)
dot(A(1,:),A(1,:))
dot(A(4,:),A(4,:))

% Problem 4(f)
Q = [1/sqrt(14) 1/sqrt(3) 5/sqrt(42) ; 
     2/sqrt(14) 1/sqrt(3) -4/sqrt(42) ;
     3/sqrt(14) -1/sqrt(3) 1/sqrt(42)]
transpose(Q) * Q

% Problem 4(g)
% The dot products of two columns i,j where i = j
% are 1, meaning they are unit vectors.
% The dot products of two columns i,j where i =/= j
% are 0, meaning they are orthogonal.

% Problem 4(h)
% If Q^T * Q = I then I = Q * Q^T. If 
% Q * Q^T = I, and the dot products of the rows
% of Q form Q * Q^T, then the rows form an orthonormal set.

%% Problem 5
% Problem 5(a)
v1 = [ -5; -2; 13; 7; -5 ]
v2 = [ 3; 5; -3; -11; -6 ]
v3 = [ 3; 24; -9; -15; 3 ]
v4 = [ 1; -16; 3; 13; 1 ]

% Problem 5(b)
A = [v1 v2 v3 v4]
rank(A)
% A basis is a set of linearly independent vectors and
% the rank is equivalent to the dimension of the column
% space. Since the rank of of A is 4, its columns are lin indep
% meaning they form a basis for W.

% Problem 5(c)
w1 = v1
w2 = v2 - dot(w1,v2)/dot(w1,w1)*w1

% Problem 5(d)
w3 = v3 - dot(w1,v3)/dot(w1,w1)*w1 - dot(w2,v3)/dot(w2,w2)*w2
w4 = v4 - dot(w1,v4)/dot(w1,w1)*w1 - dot(w2,v4)/dot(w2,w2)*w2 - dot(w3,v4)/dot(w3,w3)*w3

% Problem 5(e)
u1 = w1/norm(w1)
u2 = w2/norm(w2)
u3 = w3/norm(w3)
u4 = w4/norm(w4)

% Problem 5(f)
Q = [u1 u2 u3 u4]
transpose(Q) * Q

% Problem 5(g)
R = transpose(Q) * A %#ok

% Problem 5(h)
[Q1, R1] = qr(A,0)

%% Problem 6

% Problem 6(a)
A = [2 3 -2 -1 2; 0 2 4 2 -2; 3 5 -2 -1 3; 5 9 -2 -1 2;
    0 -3 -6 -3 5; 1 4 4 2 0]
rank(A)

% Problem 6(b)
rref(A)
basis = [A(:,1),A(:,2),A(:,5)] % treat as a set of vectors

% Problem 6(c)
B = basis
[Q,R] = qr(B,0)
W_orth = Q

% Problem 6(d)
E = Q * transpose(Q)
v = [ 1 ; 1 ; 1 ; 1 ; 1 ; 1 ]
a1 = dot(v,E(:,1))/dot(E(:,1),E(:,1)) * E(:,1) + dot(v,E(:,2))/dot(E(:,2),E(:,2)) * E(:,2); 
a2 = dot(v,E(:,3))/dot(E(:,3),E(:,3)) * E(:,3) + dot(v,E(:,4))/dot(E(:,4),E(:,4)) * E(:,4); 
a3 = dot(v,E(:,5))/dot(E(:,5),E(:,5)) * E(:,5) + dot(v,E(:,6))/dot(E(:,6),E(:,6)) * E(:,6);
proj_v = a1 + a2 + a3 % it didnt all fit into one line

% Problem 6(e)
W_perp = null(transpose(B))

% Problem 6(f)
[Q2,R2] = qr(W_perp,0)
W_perp_orth = Q2

% Problem 6(g)
F = W_perp_orth * transpose(W_perp_orth)
E+F