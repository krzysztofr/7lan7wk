% Consider a list of keyword-value tuples, such as [{erlang, "a functional
% language"}, {ruby, "an OO language"}]. Write a function that accepts the list
% and a keyword and returns the associated value for the keyword.

-module(task_2_1).
-export([myLang/2]).

desc([{Name, Description}]) -> Description.

myLang(Keyword, Mylist) -> desc(lists:filter(fun({Name, Description}) -> Name == Keyword end, Mylist)).


% to test, run:
% c(task_2_1).
% task_2_1:myLang(ruby, [{erlang, "a functional language"}, {ruby, "an OO language"}]).
