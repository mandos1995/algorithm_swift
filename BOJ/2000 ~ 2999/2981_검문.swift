import Foundation
func gcd(_ n: Int, _ m: Int) -> Int {
    if m == 0 {
        return n
    } else {
        return gcd(m, n % m)
    }
}

let n = Int(readLine()!)!
var array: [Int] = []
for _ in 0..<n {
    array.append(Int(readLine()!)!)
}

array.sort { $0 < $1 }

var gcdValue = array[1] - array[0]

for i in 2..<n {
    gcdValue = gcd(gcdValue, array[i] - array[i - 1])
}
var answer: [Int] = []
for i in 2..<Int(sqrt(Double(gcdValue)) + 1) {
    if gcdValue % i == 0 {
        answer.append(i)
        answer.append(gcdValue / i)
    }
}
answer.append(gcdValue)
answer = Array(Set(answer)).sorted(by: <)
for answer in answer {
    print(answer, terminator: " ")
}
