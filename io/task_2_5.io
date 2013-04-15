# Write a prototype for a two-dimensional list. The dim(x,y) method
# should allocate a list of y lists that are x elements long, 
# set(x,y,value) should set a value and get(x,y) should return that value.

TwoDList := Object clone do (
    init := method(
        self lists := list()
    )

    dim := method(x,y,
        for (i,0,y-1,
            self lists append (List clone setSize(x))
        )
    )

    set := method(x,y,value,
        self lists at(y) atPut(x,value)
    )

    get := method(x,y,
        return self lists at(y) at(x)
    )

    transposed := method(
        trans_list := TwoDList clone
        y := self lists size()
        x := self lists at(0) size()
        trans_list dim(y,x)
        for (i,0,x-1,
            for (j,0,y-1,
                trans_list set(j,i,self get(i,j))
            )

        )
        return trans_list
    )

)

mylist := TwoDList clone
mylist dim(3,2)
mylist set(1,1,10)
mylist get(1,1) println
mylist lists println
mylist transposed lists println
(mylist get(0,1) == mylist transposed get (1,0)) println
