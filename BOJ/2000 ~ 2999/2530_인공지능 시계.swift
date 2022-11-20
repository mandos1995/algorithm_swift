import Foundation
let input = readLine()!.split(separator: " ").map { Int($0)! }
let time = Int(readLine()!)!
var hour = input[0]
var min = input[1]
var sec = input[2]
let plusTime = input[0] * 3600 + input[1] * 60 + input[2] + time
hour = plusTime / 3600
min = (plusTime % 3600) / 60
sec = (plusTime % 3600) % 60
print(hour % 24, min, sec)
