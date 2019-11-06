% Zain Bhaila
% Math 401
% Homework 5

%% 9.1

% on seperate sheet
syms x;
A = [ -1 0 2 2 2 ; 0 2 3 0 1 ; 1 2 -2 1 2]
C = transpose(A)
B = A*C
y = det(B - x * eye(3))
z = double(solve(y == 0, x))
s = sqrt(z)
[T,E] = eig(B)
T = T*-1
v1 = C * T(:,3)/norm(C * T(:,3))
v2 = C * T(:,2)/norm(C * T(:,2))
v3 = C * T(:,1)/norm(C * T(:,1))
[U,S,V] = svd(A)

%% 10.1
p1 = [1 ; 2] % points
p2 = [4 ; 3]
p3 = [-1 ; -3]
p4 = [-5 ; -8]
hold on;
axis([-10 10 -10 10])
scatter(p1(1,1), p1(2,1)) % plot points
scatter(p2(1,1), p2(2,1))
scatter(p3(1,1), p3(2,1))
scatter(p4(1,1), p4(2,1))
A= [p1 p2 p3 p4] % matrix of points
M = mean(A, 2) % average of points
C = A - M % center matrix
[U,S,V] = svd(C) % SVD of centered matrix
% variance is greatest in direction of the first column of U
plot([0 ; U(1,1) * 20], [0 ; U(2,1) * 20] , 'k') % plot variance line
plot([0 ; U(1,1) * -20], [0 ; U(2,1) * -20] , 'k')

%% 10.4

% part a
A = [ 2 3 0 0 0 0 ; 0 0 1 0 0 0 ;
      3 3 0 0 0 0 ; 0 0 5 5 5 5 ]
[U,S,V] = svd(A)

% part b
SP = S;
SP(3,3) = 0; % set two smallest singular values to 0
SP(4,4) = 0
B = U*SP*transpose(V) % B is A'
AC = A - mean(A) % center A
BC = B - mean(B) % center B
% variance of AC
x = norm(AC(:,1))^2 + norm(AC(:,2))^2 + norm(AC(:,3))^2 + norm(AC(:,4))^2 + norm(AC(:,5))^2 + norm(AC(:,6))^2
% variance of BC
y = norm(BC(:,1))^2 + norm(BC(:,2))^2 + norm(BC(:,3))^2 + norm(BC(:,4))^2 + norm(BC(:,5))^2 + norm(BC(:,6))^2
y/x * 100 % percent of variance preserved

%% 10.11

% calculate the svd of the matrix
% set all singular values less than 1 to 0
% calculate the new matrix using U, the new sigma, and V
% center both matrixes
% calculate the variance of each matrix by adding the squares of the norms
%       of each column of the matrices
% divide the variance of the original matrix by the variance of the new
%       matrix and see what percent of variance is preserved
% if the variance is less than 99%
%       repeat process but remove fewer singular values
% if the variance is greater than 99%
%       repeat process but remove more singular values
% continue to repeat until variance is as close to 99% as possible