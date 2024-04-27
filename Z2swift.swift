import Foundation

func isValid(_ s: String) -> Bool {
    var count = 1
    var chislo = s[s.startIndex]
    for i in 1..<s.count {
        if s[s.index(s.startIndex, offsetBy: i)] == chislo {
            count += 1
            if count > 3 {
                return false
            }
        } else {
            count = 1
            chislo = s[s.index(s.startIndex, offsetBy: i)]
        }
    }
    return true
}

func perevod(_ s: String) {
    var predZnach = 0
    var summa = 0
    let romanNumbers: [Character: Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
    let usedNumbers = Set<Character>(s)

    for i in stride(from: s.count - 1, through: 0, by: -1) {
        let znach = romanNumbers[s[s.index(s.startIndex, offsetBy: i)]]!
        if znach < predZnach {
            summa -= znach
        } else {
            summa += znach
        }
        predZnach = znach
    }

    print(summa)
    for c in usedNumbers {
        print("\(c) = \(romanNumbers[c]!) ", terminator: "")
    }
}

if let number = readLine() {
    if isValid(number) {
        perevod(number)
    } else {
        print("the number is entered incorrectly")
    }
}