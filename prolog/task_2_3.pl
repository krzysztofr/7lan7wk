% Sort the elements of a list.

% algorithm used: insert sort

inSort([], []).

% sort the Tail and insert Head where appropriate
inSort([Head|Tail], Result) :- inSort(Tail, Sorted), insert(Head, Sorted, Result).

% insert value to empty list - list of one element
insert(Val, [], [Val]).

% insert value to list
% ... if smaller than the current head - insert at the beginning
insert(Val, [Head|Tail], [Val|[Head|Tail]]) :- Val=<Head.
% ... if larger, insert somewhere inside
insert(Val, [Head|Tail], [Head|Tail2]) :- Val>Head, insert(Val, Tail, Tail2).

% to test, run: 
% inSort([2,1,9,3,0,22], R).
