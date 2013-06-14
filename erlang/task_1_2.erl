% Write a function that uses recursion to count to ten.

-module(task_1_2).
-export([count10/1]).

count10(10) -> io:fwrite("10\n");
count10(N) -> io:fwrite(integer_to_list(N)++"\n"), count10(N+1).

