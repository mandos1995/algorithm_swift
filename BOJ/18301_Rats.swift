import Foundation
let input = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let n1 = input[0]
let n2 = input[1]
let n12 = input[2]
let sum = (n1 + 1) * (n2 + 1) / (n12 + 1) - 1
print(sum)
