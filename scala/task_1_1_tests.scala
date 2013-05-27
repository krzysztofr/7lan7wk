package pro.rakowski.scala.task_1_1.tests

import org.scalatest.FunSuite
import pro.rakowski.scala.task_1_1.TicTacToe.TicTacToe

class ExampleSuite extends FunSuite {

    var ttt = new TicTacToe("XOXOOEXOX");
    println(ttt.result());

}
