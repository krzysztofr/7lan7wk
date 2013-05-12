% Find the smallest/largest element of a list.

max(A,B,R) :- A>B, R is A.
max(A,B,R) :- A=<B, R is B.

% one element list
maxlist([One], One).

maxlist([Head|Tail], R) :- maxlist(Tail, R1), max(R1, Head, R).

% to test, run:
% maxlist([1,2,3,4], R).

min(A,B,R) :- A>B, R is B.
min(A,B,R) :- A=<B, R is A.

% one element list
minlist([One], One).

minlist([Head|Tail], R) :- minlist(Tail, R1), min(R1, Head, R).

% to test, run:
% minlist([1,2,3,4], R).
