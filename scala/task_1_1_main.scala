package pro.rakowski.scala.task_1_1.runtime

import pro.rakowski.scala.task_1_1.TicTacToe.TicTacToe

object Main extends App {
    var ttt = new TicTacToe("XOXOOEXOX");
    ttt.print_board();
    println(ttt.result());
}
