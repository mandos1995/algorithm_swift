import Foundation
let input = readLine()!.split(separator: " ").map { Int($0)! }
let a = input[0], b = input[1], d = input[2]
var isPrimeNumber = [Bool](repeating: true, count: b + 1)

for i in 2...Int(sqrt(Double(b)) + 1) {
    if isPrimeNumber[i] {
        var j = 2
        while i * j <= b {
            isPrimeNumber[i * j] = false
            j += 1
        }
    }
}

var answer = 0

for num in a...b {
    if isPrimeNumber[num] && "\(num)".contains("\(d)") {
        answer += 1
    }
}

print(answer)
