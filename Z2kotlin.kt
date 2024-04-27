fun isValid(s: String): Boolean {
    var count = 1
    var chislo = s[0]
    for (i in 1 until s.length) {
        if (s[i] == chislo) {
            count++
            if (count > 3) {
                return false
            }
        } else {
            count = 1
            chislo = s[i]
        }
    }
    return true
}

fun perevod(s: String) {
    var predZnach = 0
    var summa = 0
    val romanNumbers = mapOf('I' to 1, 'V' to 5, 'X' to 10, 'L' to 50, 'C' to 100, 'D' to 500, 'M' to 1000)
    val usedNumbers = s.toSet()
    for (i in s.length - 1 downTo 0) {
        val znach = romanNumbers[s[i]]!!
        if (znach < predZnach) {
            summa -= znach
        } else {
            summa += znach
        }
        predZnach = znach
    }
    println(summa)
    for (c in usedNumbers) {
        println("$c = ${romanNumbers[c]}")
    }
}

fun main() {
    val number = readLine()!!
    if (isValid(number)) {
        perevod(number)
    } else {
        println("the number is entered incorrectly")
    }
}