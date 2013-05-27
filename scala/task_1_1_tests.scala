package pro.rakowski.scala.task_1_1.tests

import org.scalatest.FunSuite
import pro.rakowski.scala.task_1_1.TicTacToe.TicTacToe

class TestSuite extends FunSuite {

    
    test ("for board XOX OOE XOX - O wins in 2nd column") {
        val ttt1 = new TicTacToe("XOXOOEXOX");
        val result1 = ttt1.result();
        assert(result1 == "O wins (column 2)");
    }

    test ("for board XEE XXX OOE - X wins in 2nd row") {
        val ttt2 = new TicTacToe("XEEXXXOOE");
        val result2 = ttt2.result();
        assert(result2 == "X wins (row 2)");
    }

    test ("for board XOE OXE EEX - X wins in NW-SE diagonal") {
        val ttt3 = new TicTacToe("XOEOXEEEX");
        val result3 = ttt3.result();
        assert(result3 == "X wins (NW-SE diagonal)");
    }

    test ("for board XOE EEE OXE - there is no result yet") {
        val ttt4 = new TicTacToe("XOEEEEOXE");
        val result4 = ttt4.result();
        assert(result4 == "no winner yet");
    }

    test ("for board OOX XXO OXX - there is tie") {
        val ttt5 = new TicTacToe("OOXXXOOXX");
        val result5 = ttt5.result();
        assert(result5 == "tie");
    }


}
