import Foundation
var input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let h = input[1]
let v = input[2]

print(4 * max(h, n - h) * max(v, n - v))
