import Foundation

func reverse(_ numb: Int) {
    var numb = numb
    var reversed = 0
    while numb != 0 {
        reversed = reversed * 10 + numb % 10
        numb /= 10
    }
    print(reversed)
}

if let n = readLine().flatMap({ Int($0) }) {
    for _ in 0..<n {
        if let chislo = readLine().flatMap({ Int($0) }) {
            reverse(chislo)
        }
    }
}