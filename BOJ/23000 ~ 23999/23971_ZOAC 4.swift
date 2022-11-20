import Foundation
let input = readLine()!.split(separator: " ").map { Double($0)! }
let h = input[0], w = input[1], n = input[2], m = input[3]
let section = ceil(w / (m + 1))
let row = ceil(h / (n + 1))

print(Int(row * section))
