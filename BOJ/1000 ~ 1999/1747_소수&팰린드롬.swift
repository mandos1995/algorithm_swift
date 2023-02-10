import Foundation
let n = Int(readLine()!)!

var isPrimeNumber = [Bool](repeating: true, count: 1_003_002)
isPrimeNumber[1] = false

for i in 2...Int(sqrt(1_003_002) + 1) {
    if isPrimeNumber[i] {
        var j = 2
        while i * j <= 1_003_001 {
            isPrimeNumber[i * j] = false
            j += 1
        }
    }
}

for i in n...1_003_001 {
    if isPrimeNumber[i] && "\(i)" == String("\(i)".reversed()) {
        print(i)
        break
    }
}
