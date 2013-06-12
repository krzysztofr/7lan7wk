/*
Take the sizer application and add a message to count the number of links on
the page.
*/

import scala.io._
import scala.actors._
import Actor._
import scala.util.matching.Regex


// START:loader
object PageLoader {

    val pattern = new Regex("<a.*?href=.*?>")

    def getPageStats(url : String):(Int,Int) = {
        val page = Source.fromURL(url)(io.Codec("ISO-8859-1")).mkString
        return (page.length, (pattern findAllIn page).size)
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
   val pageStats = PageLoader.getPageStats(url)
   println("Size for " + url + ": " + pageStats._1 + "; links: " + pageStats._2)            
 }
}
// END:sequential

// START:concurrent
def getPageStatsConcurrently() = {
 val caller = self

 for(url <- urls) {
   val pageStats = PageLoader.getPageStats(url)
   actor { caller ! (url, pageStats._1, pageStats._2) }
 }

 for(i <- 1 to urls.size) {
   receive {
     case (url, size, links) =>
       println("Size for " + url + ": " + size + "; links: " + links)            
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
