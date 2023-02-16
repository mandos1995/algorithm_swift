import Foundation

let k = Int(readLine()!)!

var isPrimeNumber = [Bool](repeating: true, count: 8_000_001)
isPrimeNumber[0] = false
isPrimeNumber[1] = false

for i in 2..<Int(sqrt(Double(8_000_000)) + 1) {
    if isPrimeNumber[i] {
        var j = 2
        while i * j <= 8_000_000 {
            isPrimeNumber[i * j] = false
            j += 1
        }
    }
}

print(isPrimeNumber.enumerated().filter { $0.element }.map { $0.offset }[k - 1])
