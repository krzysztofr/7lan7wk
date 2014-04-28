% Write a function that uses recursion to return the number of words in a string.

-module(task_1_1).
-export([count_words/1]).
-export([count/1]).

count_words(Sentence) -> count(string:tokens(Sentence, " ")).

count([]) -> 0; 
count([_|Tail]) -> 1 + count(Tail).
