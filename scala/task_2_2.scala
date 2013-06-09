/*
Task 2.2:
Write a Censor trait with a method that will replace the curse words Shoot and
Darn with Pucky and Beans alternatives. Use a map to store the curse words and
their alternatives.

TODO: make the replacement case insensitive

Task 2.3:
Load the curse words and alternatives from a file.

File syntax:
word1,replacement1
word2,replacement2
...

*/

import scala.io.Source

trait Censor {
    //val replace_map = Map("shoot" -> "pucky", "darn" -> "beans")

    var replace_map = Map[String,String]()
    

    def load_from_file(filename:String) = {

        var pair = Array[String]()

        Source.fromFile(filename).getLines.foreach { line =>
            pair = line.split(",")
           
            replace_map = replace_map + ((pair(0), pair(1)))
        }

    }

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
mm.load_from_file("curse_words.txt")
println(mm.get_message())
