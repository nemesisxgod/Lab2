fun vivod(s: String) {
    var index: Int

    var i = 0
    while (i < s.length) {
        if (s[i] == '1') {
            index = i
            i++
            while (i < s.length && s[i] == '0') {
                i++
            }
            if (i < s.length && s[i] == '1' && i - index > 1) {
                println(s.substring(index, i + 1))
            }
            i--
        }
        i++
    }
}

fun main() {
    val stroka = "101dsfsfd100001"
    vivod(stroka)
}