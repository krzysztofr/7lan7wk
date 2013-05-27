package task_1_1.runtime

import pro.rakowski.TicTacToe.TicTacToe

object Task_1_1_Main extends App {
    var ttt = new TicTacToe("XOXOOEXOX");
    ttt.print_board();
    println(ttt.result());
}
