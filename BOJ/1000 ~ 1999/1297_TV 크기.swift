import Foundation
let input = readLine()!.split(separator: " ").map { Double($0)! }
var num = input[0] * input[0]
var height = input[1] * input[1]
var width = input[2] * input[2]
var x = height + width
height = sqrt(num * (height / x))
width = sqrt(num * (width / x))
print(Int(floor(height)), Int(floor(width)))
