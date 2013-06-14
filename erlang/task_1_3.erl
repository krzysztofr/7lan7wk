% Write a function that uses matching to selectively print "success" or
% "error: message" given input of the form {error, Message} or success.

-module(task_1_3).
-export([print/1]).

print(success) -> io:fwrite("success\n");
print({error, Message}) -> io:fwrite(Message++"\n").
