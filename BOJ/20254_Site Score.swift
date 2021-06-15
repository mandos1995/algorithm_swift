import Foundation
let input = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let ur = input[0] * 56
let tr = input[1] * 24
let uo = input[2] * 14
let to = input[3] * 6
let sum = (ur + tr + uo + to)
print(sum)
