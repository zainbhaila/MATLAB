% Zain Bhaila
% Math 240 Fall 2018 Project 2
clc

%% Problem 0
format rat
clock

%% Problem 1
format rat
A = [1 7 2; 3 3 5; 2 5 3]

% Problem 1(a)
M = [A eye(3)]
N = rref(M)
X = N(:,4:6)

% Problem 1(b)
inv(A)

%% Problem 2
format rat

% Problem 2(a)
A = [1 40 19 -6; 0 2 0 8; 0 0 -5 71; 0 0 0 -1]
B = [2 -1 3 1; 2 0 1 -1; 2 3 3 3; 1 -1 -1 -1]
det(A)
det(B)

% Problem 2(b)
% the determinent of an upper triangular matrix is 
% the product of its diagonal values

% Problem 2(c)
C = A*B
det(C)

% Problem 2(d)
% det(C) = det(A*B) = det(A)*det(B) 
% and we know det(A) and det(B)

%% Problem 3
format rat
A = [2 -2 2 3; 5 1 -2 6; -3 3 1 -6; 0 -1 1 1]

% Problem 3(a)
det(A)

% Problem 3(b)
% i -> 33
% ii -> -1 * 33 = -33
% iii -> 33 * 1/5 = 33/5 

% Problem 3(c)
B = A;
B(4,:) = B(4,:) + 7 * B(2,:)
C = A;
temp = C(1,:);
C(1,:) = C(3,:);
C(3,:) = temp
D = A;
D(2,:) = 1/5 * D(2,:)

% Problem 3(d)
det(B)
det(C)
det(D)

%% Problem 4

% Problem 4(a)
syms a b c d
A = [a b; c d]

% Problem 4(b)
inv(A)

% Problem 4(c)
syms e f g h i
B = [a b c; d e f; g h i] %#ok
inv(B)

% Problem 4(d)
inv(B)*det(B) %#ok

%% Problem 5
format short

% Problem 5(a)
A = [cos(pi/9) -sin(pi/9); sin(pi/9) cos(pi/9)]
v = [2 ; -7]
A*v

% Problem 5(b)
B = [cos(pi/13) -sin(pi/13); sin(pi/13) cos(pi/13)]
A*B == B*A %#ok
if A*B == B*A 
    disp ('the two matrices are equivalent')
else
    disp('the two matrices are not equivalent')
end

% Problem 5(c)
% it shows that they do the same thing regardless of
% the order they are performed

% Problem 5(d)
C = A*B
t = acos(C(1,1))
format rat
t/pi

% Problem 5(e)
format short
R = [cos(-pi/9) -sin(-pi/9); sin(-pi/9) cos(-pi/9)]
inv(A)
% they are the same, computer approximated sin values
% give an incorrect result for boolean expressions

% Problem 5(f)
L_0 = [1 0; 0 -1]
L = A * L_0 * inv(A) %#ok

% Problem 5(g)
L*L_0 == L_0*L %#ok
if L*L_0 == L_0*L
    disp('the two matrices are equivalent')
else
    disp('the two matrices are not equivalent')
end

% Problem 5(h)
R = L*L_0
t = acos(R(1,1))
format rat
t/pi