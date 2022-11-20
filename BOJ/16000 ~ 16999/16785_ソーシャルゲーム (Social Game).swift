import Foundation
let input = readLine()!.split(separator: " ").map { Int($0)! }
let a = input[0]
let b = input[1]
let c = input[2]
var coin = 0
var day = 0
while coin < c {
    day += 1
    if day % 7 == 0{
        coin += a + b
    } else {
        coin += a
    }
}
print(day)
