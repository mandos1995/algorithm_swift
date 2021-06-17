import Foundation
let num = Int(readLine()!)!
var input = readLine()!.split(separator: " ").map { Double($0)! }
let max = input.max()!
var sum = 0.0
for i in 0..<input.count{
    input[i] = input[i]/max * 100
    sum += input[i]
}
print(sum / Double(input.count))
