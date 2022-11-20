import Foundation
let input = readLine()!.split(separator: " ").map { Int($0)! }
let a = input[0], b = input[1]
let m = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map { Int($0)! }
var num = 0

for (index, arr) in array.enumerated() {
    num += (arr * Int(pow(Double(a), Double(m - index - 1))))
}

var div: [Int] = []
while num >= b {
    div.append(num % b)
    num /= b
}
div.append(num)

print(div.reversed().map { String($0) }.joined(separator: " "))
