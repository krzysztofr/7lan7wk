% Reverse the elements of a list.

rev([],[]).
rev(List,List) :- L=1, length(List, L).
rev([Head|Tail], Result) :- append(Rem, [Head], Result), rev(Tail, Rem).

% to test, run:
% rev([1,2,3,4], R).
% rev(R, [1,2,3,4]).
