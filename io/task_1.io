(1 + 1) println

e := try(
    1 + "one"
)

e catch(Exception,
    "Exception" println
)

(0 and true) println
("" and true) println
(nil and true) println

Lobby slotNames println

# Execute the code in a slot given it's name
MyClass := Object clone
MyClass printabc := method ("abc" println)
MyClass getSlot("printabc") call
