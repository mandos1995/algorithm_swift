import Foundation

var isPrimeNumber = [Bool](repeating: true, count: 1_000_001)

for i in 2...1000 {
    if isPrimeNumber[i] {
        var j = 2
        while i * j <= 1_000_000 {
            isPrimeNumber[i * j] = false
            j += 1
        }
    }
}

let n = Int(readLine()!)!
let primeNumbers = readLine()!.split(separator: " ").map { Int($0)! }.filter { isPrimeNumber[$0] }

func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    }
    return gcd(b, a % b)
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}

if primeNumbers.isEmpty {
    print(-1)
} else {
    var answer = 1
    for number in primeNumbers {
        answer = lcm(answer, number)
    }
    
    print(answer)
}
