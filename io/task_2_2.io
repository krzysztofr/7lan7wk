# How would you change / to return 0 if the denominator is zero?

Number old_div := Number getSlot("/")
Number / := method (num,
    if (num==0, 0, self old_div(num))
)

(1/2) println
(1/0) println
