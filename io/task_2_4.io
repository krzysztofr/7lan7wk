# Add a slot called myAverage to a list that computes the average
# of all the numbers in a list. What happens if there are no numbers
# in a list? 

List myAverage := method (
    if(size==0, 0, sum/size)
)
("list(1,2,3) average: " .. list(1,2,3) myAverage) println
("list() average: " ..  list() myAverage) println

# Bonus: Raise and Io exception if any item in the list is not a number.
#
# In fact it happens already: list("a") raises and exception
