/*
Task 2.2:
Write a Censor trait with a method that will replace the curse words Shoot and
Darn with Pucky and Beans alternatives. Use a map to store the curse words and
their alternatives.

TODO: make the replacement case insensitive

*/


trait Censor {
    val replace_map = Map("shoot" -> "pucky", "darn" -> "beans")

    def replace(input:String):String = {

        var output = input;

        replace_map.foreach(pair => output = output.replaceAll(pair._1, pair._2))
        return output 
    }
}

class MyMessage(message:String) extends Censor {
    
    def get_message():String = {
        return replace(message)
    }
}

val mm = new MyMessage("you piece of shoot, god darn it")
println(mm.get_message())
