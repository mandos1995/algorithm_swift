import Foundation

func makePrimeNumber() -> [Int] {
    var isPrimeNumber = [Bool](repeating: true, count: 1001)
    
    for i in 2...Int(sqrt(1000)) + 1 {
        if isPrimeNumber[i] {
            var j = 2
            while i * j <= 1000 {
                isPrimeNumber[i * j] = false
                j += 1
            }
        }
    }
    
    return isPrimeNumber.enumerated().filter { $0.offset > 1 && $0.element }.map { $0.offset }
}

let primeNumber = makePrimeNumber()

func solution() -> [Int] {
    let target = Int(readLine()!)!
    for i in primeNumber {
        for j in primeNumber {
            for k in primeNumber {
                if i + j + k == target {
                    return [i, j, k]
                }
            }
        }
    }
    return [0]
}

let t = Int(readLine()!)!

for _ in 0..<t {
    solution().forEach { print($0, terminator: " ") }
    print()
}
