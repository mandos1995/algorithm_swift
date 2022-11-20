import Foundation
var max = 0
var sum = 0
var maxIdx = 0
for i in 0..<5 {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    for j in 0..<4 {
        sum += input[j]
        if max < sum {
            max = sum
            maxIdx = i + 1
        }
    }
    sum = 0
}
print(maxIdx, max)
