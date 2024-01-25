import Foundation
func makePrimeNumber() -> [Int] {
    var isPrime = [Bool](repeating: true, count: 1_000_001)
    for i in 2..<Int(sqrt(1_000_000)) {
        if isPrime[i] {
            var j = 2
            while i * j <= 1_000_000 {
                isPrime[i * j] = false
                j += 1
            }
        }
    }
    return isPrime.enumerated().filter { $0.element && $0.offset > 1 }.map { $0.offset }
}

let primeNumber = makePrimeNumber()

let t = Int(readLine()!)!

for _ in 0..<t { print(solution()) }

func solution() -> String {
    let n = Int(readLine()!)!
    for pn in primeNumber {
        if n % pn == 0 {
            return "NO"
        }
    }
    return "YES"
}
