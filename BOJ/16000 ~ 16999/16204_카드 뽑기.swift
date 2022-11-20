import Foundation
let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let m = input[1]
let k = input[2]
var count = 0
var card_front = [String](repeating: "O", count: m)
for _ in 0..<n - m{
    card_front.append("X")
}
var card_back = [String](repeating: "O", count: k)
for _ in 0..<n - k{
    card_back.append("X")
}
for i in 0..<n{
    if card_front[i] == card_back[i]{
        count += 1
    }
}
print(count)
