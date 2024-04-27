import Foundation

func vivod(s: String) {
    var index = 0

    var i = 0
    while i < s.count {
        if s[s.index(s.startIndex, offsetBy: i)] == "1" {
            index = i
            i += 1
            while i < s.count && s[s.index(s.startIndex, offsetBy: i)] == "0" {
                i += 1
            }
            if i < s.count && s[s.index(s.startIndex, offsetBy: i)] == "1" && i - index > 1 {
                let startIndex = s.index(s.startIndex, offsetBy: index)
                let endIndex = s.index(s.startIndex, offsetBy: i + 1)
                let substring = s[startIndex..<endIndex]
                print(substring)
            }
            i -= 1
        }
        i += 1
    }
}

let stroka = "101sda10001" 
vivod(s: stroka)
