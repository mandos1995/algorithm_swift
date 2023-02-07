import Foundation

func isPrimeNumber(num: Int) -> Bool {
    if num < 2 {
        return false
    }
    
    for i in 2..<Int(sqrt(Double(num)) + 1) {
        if num % i == 0 {
            return false
        }
    }
    return true
}

func solution() {
    var num = Int(readLine()!)!
    while !isPrimeNumber(num: num) {
        num += 1
    }
    print(num)
}

let t = Int(readLine()!)!
for _ in 0..<t { solution() }
