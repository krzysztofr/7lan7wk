# Write a prototype for a two-dimensional list. The dim(x,y) method
# should allocate a list of y lists that are x elements long, 
# set(x,y,value) should set a value and get(x,y) should return that value.

TwoDList := Object clone do (
    init := method(
        self lists := list()
    )

    dim := method(x,y,
        for (i,1,y,
            self lists append (List clone setSize(x))
        )
    )

    set := method(x,y,value,
        self lists at(y) atPut(x,value)
    )

    get := method(x,y,
        return self lists at(y) at(x)
    )


)

mylist := TwoDList clone
mylist dim(3,3)
mylist set(2,2,10)
mylist get(2,2) println
mylist lists println
