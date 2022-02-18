import Foundation
let input = readLine()!.split(separator: " ").map { Double($0)! }
let a = input[0], b = input[1], v = input[2]
let day = (v - b) / (a - b)
print(Int(ceil(day)))
