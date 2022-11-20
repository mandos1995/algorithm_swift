import Foundation

let input = readLine()!.split(separator: " ").map { Double($0)! }
let m = (input[1] - input[0]) / 400.0
let result = 1.0 / (1.0 + pow(10.0, m))
print(result)
