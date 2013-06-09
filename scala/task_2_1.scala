// Use foldLeft to compute the total size of a list of strings.

val list = List(1,2,3,4,5,6,7,8)
val s = list.foldLeft(0)((size, value) => size + 1)
println("list size: " + s)
