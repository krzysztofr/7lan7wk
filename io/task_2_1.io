# Write a program to find the nth Fibonacci number
# fib(1) is 1 and fib(4) is 2.

fib := method(position,

    (position == 0) ifTrue( return 0 );
    (position == 1) ifTrue( return 1 );


    return fib(position-1) + fib(position-2) 
)

("fib(1): " .. fib(1)) println
("fib(2): " .. fib(2)) println
("fib(3): " .. fib(3)) println
("fib(4): " .. fib(4)) println
("fib(5): " .. fib(5)) println
("fib(6): " .. fib(6)) println
("fib(7): " .. fib(7)) println
("fib(8): " .. fib(8)) println
("fib(9): " .. fib(9)) println
("fib(10): " .. fib(10)) println
