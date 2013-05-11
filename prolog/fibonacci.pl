% implementation of Fibonacci series
% source: http://en.literateprograms.org/Fibonacci_numbers_(Prolog)

% naive

fibn(0, 0).
fibn(1, 1).
fibn(N, FN) :- A is N-1, B is N-2, fibn(A, FA), fibn(B, FB), FN is FA+FB.

% tail recursive

fibt(0, A, _, A).
fibt(N, A, B, F) :- N1 is N-1, Sum is A+B, fibt(N1, B, Sum, F).
fibt(N, F) :- fibt(N, 0, 1, F).

% compare execution time 
% fibn(26,N).
% fibt(260,N).
