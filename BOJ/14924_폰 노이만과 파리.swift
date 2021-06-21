import Foundation
let input = readLine()!.split(separator: " ").map { Int($0)! }
let s = input[0]
let t = input[1]
let d = input[2]

print((d / (s * 2)) * t)
