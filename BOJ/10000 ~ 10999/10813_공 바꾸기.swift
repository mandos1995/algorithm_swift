import Foundation
let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let m = input[1]
var basket = [Int]()
for i in 0...input[0]{
    basket.append(i)
}
for _ in 0..<m{
    let ball = readLine()!.split(separator: " ").map { Int($0)! }
    var temp = 0
    temp = basket[ball[0]]
    basket[ball[0]] = basket[ball[1]]
    basket[ball[1]] = temp
}
for i in 1...input[0]{
    print(basket[i],terminator: " ")
}
