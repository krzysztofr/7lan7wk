# (3.1) Enhance the XML program to add spaces to show the indentation structure.
#
# (3.3) Enhance the XML program to handle attributes: if the first argument
# is a map (use the curly brackets syntax), add attributes to the XML program.
# For example: book({"author" : "Tate"}) would print <book author="Tate">.

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

Builder ul(
    li("Io"),
    li("Lua"),
    li("JavaScript"),
    a()
)
