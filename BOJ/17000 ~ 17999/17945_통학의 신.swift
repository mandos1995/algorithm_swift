import Foundation
let input = readLine()!.split(separator: " ").map { Double($0)! }
let b = 2 * input[0]
let c = input[1]
let result1 = (-b + sqrt(b * b - 4 * c)) / 2
let result2 = (-b - sqrt(b * b - 4 * c)) / 2
var result = [Int(result1), Int(result2)]
var SetResult = Set(result)
result = Array(SetResult.sorted())
for i in 0..<result.count {
    print(result[i], terminator: " ")
}
