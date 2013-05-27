# 7lan7wk

My code for "Seven Languages in Seven Weeks" book.

## Notes

### Io

* [Language reference](http://iolanguage.org/scm/io/docs/reference/)

### Prolog

* Useful command in the interpreter: `trace` - every command is processed step by step, with values printed to the output.
* Sorting algorithms in Prolog: [Guide to Prolog Programming](http://kti.mff.cuni.cz/~bartak/prolog/sorting.html)

### Scala

* [Scala API](http://www.scala-lang.org/api/current/index.html#package)
* [Scala style guide](http://docs.scala-lang.org/style/)

#### Task 1.1 (Tic Tac Toe)

* **to run**: uncomment lines 89-91 in task_1_1.scala file and run `scala task_1_1.scala`
* **to compile (with tests)**:
    * get ScalaTest from [ScalaTest website](http://www.scalatest.org/download)
    * run: `scalac -cp scalatest_2.9.0-1.9.1.jar task_1_1*.scala` (insert proper ScalaTest jar file name)
    * the code is compiled
    * you can run it: `scala -cp scalatest_2.9.0-1.9.1.jar -cp . pro.rakowski.scala.task_1_1.runtime.Main`
    * you can run tests by using: `scala -cp scalatest_2.9.0-1.9.1.jar org.scalatest.run pro.rakowski.scala.task_1_1.tests.TestSuite`
