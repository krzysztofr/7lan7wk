import scala.io._
import scala.actors._
import Actor._

// START:loader
object PageLoader {
    def getPageStats(url : String):Int = {
        val page = Source.fromURL(url)(io.Codec("ISO-8859-1")).mkString
        return page.length
    }
}
// END:loader

val urls = List("http://www.amazon.com/", 
               "http://www.twitter.com/",
               "http://www.google.com/",
               "http://www.cnn.com/" )

// START:time
def timeMethod(method: () => Unit) = {
 val start = System.nanoTime
 method()
 val end = System.nanoTime
 println("Method took " + (end - start)/1000000000.0 + " seconds.")
}
// END:time

// START:sequential
def getPageStatsSequentially() = {
 for(url <- urls) {
   println("Size for " + url + ": " + PageLoader.getPageStats(url))
 }
}
// END:sequential

// START:concurrent
def getPageStatsConcurrently() = {
 val caller = self

 for(url <- urls) {
   actor { caller ! (url, PageLoader.getPageStats(url)) }
 }

 for(i <- 1 to urls.size) {
   receive {
     case (url, size) =>
       println("Size for " + url + ": " + size)            
   }
 }
}
// END:concurrent

// START:script
println("Sequential run:")
timeMethod { getPageStatsSequentially }

println("Concurrent run")
timeMethod { getPageStatsConcurrently }
// END:script
