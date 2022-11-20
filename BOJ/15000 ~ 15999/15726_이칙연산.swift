import Foundation
let input = readLine()!.split(separator: " ").map { Double($0)! }
var result = [0.0, 0.0]
result[0] = input[0] * input[1] / input[2]
result[1] = input[0] / input[1] * input[2]
print(Int(result.max()!))
