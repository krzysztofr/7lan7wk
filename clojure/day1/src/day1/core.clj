(ns day1.core)

(defn big
  "Returns true if string st is longer than n characters."
  [st n]
  (> (count st) n)
 )

(defn main
	"Main function."
	[]
	(println (big "mystring" 3) (big "mystring" 10))
)

