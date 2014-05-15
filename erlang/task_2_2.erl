% Consider a shopping list that looks like [{item quantity price}, ...].
% Write a list comprehension that builds a list of items of the form [{item total_price}, ...],
% where total_price is quantity times price.

-module(task_2_2).
-export([summed/1]).

summed(List) -> [{Item, Price * Quantity} || {Item, Quantity, Price} <- List].

% to test, run:
% c(task_2_2).
% task_2_2:summed([{'item1',10,2},{'item2',4,6},{'item3',5,5}]).

% expected result:
% [{item1,20},{item2,24},{item3,25}]