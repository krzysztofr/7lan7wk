# (3.1) Enhance the XML program to add spaces to show the indentation structure.
#
# (3.3) Enhance the XML program to handle attributes: if the first argument
# is a map (use the curly brackets syntax), add attributes to the XML program.
# For example: book({"author" : "Tate"}) would print <book author="Tate">.

OperatorTable addAssignOperator(":", "parseAttrs")

write_spaces := method(num,
    if (num > 0, for (i, 1, num, write("  ")))
)

curlyBrackets := method(
    r := Map clone
    call message arguments foreach(arg,
        r doMessage(arg)
    )
)

parseAttrs := method(
    key := call evalArgAt(0) asMutable removePrefix("\"") removeSuffix("\"")
    val := call evalArgAt(1)
    " #{key}=\"#{val}\"" interpolate
)


Builder := Object clone

Builder level := 0



Builder forward := method(
    arguments := call message arguments
    attributes := ""
    if (arguments size > 0 and arguments at(0) name == "curlyBrackets") then (
        attributes = doMessage(arguments removeFirst)
    )
    write_spaces(level)
    writeln("<", call message name, attributes, ">")
    call message arguments foreach(
        arg,
        level = level+1
        content := self doMessage(arg)
        if (attributes != "", level = level-1)
        if (content type == "Sequence" and attributes == "") then(
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
