import Foundation
var input = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let a = input[0]
let b = input[1]
print((a + b) * (a - b))
