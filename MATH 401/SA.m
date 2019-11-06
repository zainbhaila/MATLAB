% Zain Bhaila
% Math 401
% Special Assignment #2

syms a b c d e;
% transition matrix given by problem
% ab,c,d,e are the values for teh transitions from S5
M = [3/12 5/12 0/12 2/12 a ;
     5/12 7/12 2/12 2/12 b ;
     3/12 0/12 8/12 2/12 c ;
     0/12 0/12 0/12 4/12 d ;
     1/12 0/12 2/12 2/12 e ]
 
% combinations with repetition
% number of ways to divide 12 items into 5 groups
V = 0:12;
N = 5;
[Y{N:-1:1}] = ndgrid(1:numel(V));
I = reshape(cat(N+1, Y{:}), [], N);
P = V(I); % contains every possible permutation with repetition with range 0-12 of 5 selections
[h, w] = size(P) % dimensions of P, h is the number of permutations
F = []; % filter P so that total tickets is 12
for i = 1:h % for each permutation
    if P(i,1) + P(i,2) + P(i,3) + P(i, 4) + P(i,5) == 12 % if the total # of tickets is twelve, keep the row
        F = [F;P(i,:)]; %#ok<*AGROW> 
    end
end
[h, w] = size(F) % dimensions of F, h is the number of permutations where the total ticket amount is 12

min = 2147483647; % store minimum variance, set to max int to start (2^32 - 1)
loc = 0; % row of F with minimum variance distribution of tickets
S = []; % steady state
for i = 1:h % for each permutation in F
    Q = M; % set Q to M
    Q(1,5) = F(i,1)/12; % set values of Q to reflect current ticket distribution
    Q(2,5) = F(i,2)/12;
    Q(3,5) = F(i,3)/12;
    Q(4,5) = F(i,4)/12;
    Q(5,5) = F(i,5)/12;
    T = Q^4; % 4 is the longest possible path between states
    if all(T, 'all') % if T has no 0 values
        [V,D] = eig(Q); % get eigenvalue/eigenvector set
        [row,col] = find(D == 1); % index of eigenvalue = 1, row will be the same as col
        V(:,col) = V(:,col)/sum(V(:,col)); % divide corresponding eigenvector by sum of its values
        m = (V(1,col) + V(2,col) + V(3,col) + V(4,col) + V(5,col))/5;
        s = (V(1,col) - m)^2 + (V(2,col) - m)^2 + (V(3,col) - m)^2 + (V(4,col) - m)^2 + (V(5,col) - m)^2;
        if (s < min) % if this variance is the new minimum
            min = s; % store variance as new minimum
            loc = i; % save the row this occurs at
            S = V(:,col); % save the steady state
        end
    end
end

% output answers
min % minimum variance
F(loc,:) % ticket distribution to S1-S5 from S5 in order
S % steady state
Q = M;
Q(1,5) = F(loc,1)/12;
Q(2,5) = F(loc,2)/12;
Q(3,5) = F(loc,3)/12;
Q(4,5) = F(loc,4)/12;
Q(5,5) = F(loc,5)/12 % final transition matrix
Q^4 % proof of regularity
% since the matrix is regular, it will always converge to the same steady
% state corresponding to eigenvalue = 1
