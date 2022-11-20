import Foundation
let input = readLine()!.split(separator: " ").map { Int($0)! }
let time = Int(readLine()!)!
var hour = input[0]
var min = input[1]
let plusTime = input[0] * 60 + input[1] + time
hour = plusTime / 60
min = plusTime % 60
if hour > 23 {
    hour -= 24
}
print(hour, min)
