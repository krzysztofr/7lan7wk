# (3.1) Enhance the XML program to add spaces to show the indentation structure.
#
# (3.3) Enhance the XML program to handle attributes: if the first argument
# is a map (use the curly brackets syntax), add attributes to the XML program.
# For example: book({"author" : "Tate"}) would print <book author="Tate">.

# curly bracket's map BEGIN (from phonebook example)

OperatorTable addAssignOperator(":", "atPutNumber")
curlyBrackets := method(
    r := Map clone
    call message arguments foreach(arg,
        r doMessage(arg)
    )
    r
)

Map atPutNumber := method(
    self atPut(
        call evalArgAt(0) asMutable removePrefix("\"") removeSuffix("\""),
        call evalArgAt(1)
    )
)

# curly bracket's map END

write_spaces := method(num,
    if (num > 0, for (i, 1, num, write("  ")))
)

level := 0 

Builder := Object clone

Builder forward := method(
    write_spaces(level)
    writeln("<", call message name, ">")
    call message arguments foreach(
        arg,
        level = level+1
        content := self doMessage(arg);
        if (content type == "Sequence") then(
            write_spaces(level)
            level = level-1
            writeln(content)
        )
    )
    write_spaces(level)
    writeln("</", call message name, ">")
    level = level-1

)

# it turns out, that addAssignOperator doesn't work in the same
# file - you need to load the code form file
# http://tinyurl.com/ck8mvjf

doFile("builder_test.io")
