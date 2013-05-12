% Reverse the elements of a list.

% naive
revn([],[]).
revn([One],[One]).
revn([Head|Tail], Result) :- append(Rem, [Head], Result), revn(Tail, Rem).

% to test, run:
% revn([1,2,3,4], R).
% revn(R, [1,2,3,4]).

% accumulating parameter
revr([], B, B).
revr([Head|Tail], Z, R) :- revr(Tail, [Head|Z], R).
revr(A, Result) :- revr(A, [], Result).

% to test, run:
% revr([1,2,3,4], R).
% revr(R, [1,2,3,4]).


