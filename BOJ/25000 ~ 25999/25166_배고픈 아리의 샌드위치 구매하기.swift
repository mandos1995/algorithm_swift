import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let s = input[0], m = input[1]
var money = 0

if s < 1024 {
    print("No thanks")
} else {
    money += (s - 1023) & m
    print(money == s - 1023 ? "Thanks" : "Impossible")
}
