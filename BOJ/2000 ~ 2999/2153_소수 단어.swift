import Foundation
var dict: [Character: Int] = [:]

for i in 1...26 {
    dict[Character(UnicodeScalar(96 + i)!)] = i
    dict[Character(UnicodeScalar(64 + i)!)] = i + 26
}

let word = readLine()!
var total = 0
for w in word {
    total += dict[w]!
}
func isPrimeNumber(x: Int) -> Bool {
    for i in 2..<Int(sqrt(Double(x)) + 1) {
        if x % i == 0{
            return false
        }
    }
    return true
}

isPrimeNumber(x: total) ? print("It is a prime word.") : print("It is not a prime word.")
