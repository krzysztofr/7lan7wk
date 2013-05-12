% implementation of factorial calculation
% source: http://www.csupomona.edu/~jrfisher/www/prolog_tutorial/2_2.html

% naive
facn(0,1).
facn(N,F) :- N>0, N1 is N-1, facn(N1,F1), F is N*F1.

% tail recursive (modified by me)
fact(0,F,F).
fact(N,Acc,F) :- N>0, Acc1 is N*Acc, N1 is N-1, fact(N1,Acc1,F).
fact(N,F) :- fact(N,1,F).
