/*
Write a game that will take a tic-tac-toe board with X, O and blank characters
and detect the winner or whether there is a tie or no winner yey. Use classes
where appropriate.
*/

package pro.rakowski.scala.task_1_1.TicTacToe

class TicTacToe(board_setup: String) {
    var row = 0;
    var col = 0;
   

    // 3x3 array
    val board = Array.ofDim[Int](3,3); 

    // board setup is a string of 9 characters: X, O or E (empty)
    board_setup.foreach { v =>
        // fancy switch syntax
        board(row)(col) = v match {
            case 'X' => 1
            case 'O' => -1
            case 'E' => 0
        }
        col += 1;
        if (col == 3)
        {   
            col = 0;
            row += 1;
        }
       
    }

    def print_board() {
        for (row <- 0 until 3) {
            for (col <- 0 until 3) {
                print(board(row)(col) + "\t");
            }
            println;

        }
    }

    def result() : String = {

        val col_sums = Array.ofDim[Int](3);
        // iterating over rows
        for (row <- 0 until 3)
        {
            // checking rows
            if (board(row).sum == 3) return "X wins (row "+(row+1)+")";
            if (board(row).sum == -3) return "O wins (row "+(row+1)+")";
            
            // summing up columns
            for (col <- 0 until 3) {
                col_sums(col) += board(row)(col);
            }
        }

        // checking columns
        for (col <- 0 until 3) {
            if (col_sums(col) == 3) return "X wins (column "+(col+1)+")";
            if (col_sums(col) == -3) return "O wins (column "+(col+1)+")";
        }

        // checking diagonals

        // NW-SE
        val nwse_sum = board(0)(0) + board(1)(1) + board(2)(2);
        if (nwse_sum == 3) return "X wins (NW-SE diagonal)";
        else if (nwse_sum == -3) return "O wins (NW-SE diagonal)";

        // SW-NE
        val swne_sum = board(2)(0) + board(1)(1) + board(0)(2);
        if (swne_sum == 3) return "X wins (SW-NE diagonal)";
        else if (nwse_sum == -3) return "O wins (SW-NE diagonal)";

        // if we're here - there is no winner
        
        // empty spaces? not finished yet
        if (board_setup contains "E") return "no winner yet";

        // tie otherwise
        return "tie";
    }

}

//var ttt = new TicTacToe("XOXOOEXOX");
//ttt.print_board();
//println(ttt.result());
