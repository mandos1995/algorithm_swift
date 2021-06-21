import Foundation
let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
var money = [0, 0]
var num = 0
while true{
    if num >= input[0] {
        break
    }
    num += input[1]
    money[0] += input[2]
}
num = 0
while true{
    if num >= input[0] {
        break
    }
    num += input[3]
    money[1] += input[4]
}
print(money.min()!)
