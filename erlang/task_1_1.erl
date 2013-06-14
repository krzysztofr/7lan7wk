% Write a function that uses recursion to return the number of words in a string.

-module(task_1_1).
-export([count/1]).

count([One]) -> 1; 
count([Head|Tail]) -> 1 + count(Tail).
