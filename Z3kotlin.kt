import kotlin.math.abs

fun reverse(numb: Int): Int {
    var numbTemp = numb
    var reversed = 0
    while (numbTemp != 0) {
        reversed = reversed * 10 + numbTemp % 10
        numbTemp /= 10
    }
    return reversed
}

fun main() {
    val n = readLine()!!.toInt()
    repeat(n) {
        val chislo = readLine()!!.toInt()
        println(reverse(chislo))
    }
}