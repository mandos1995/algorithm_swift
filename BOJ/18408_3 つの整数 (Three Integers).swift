import Foundation
let input = readLine()!.split(separator: " ").map { Int($0)! }
var sum = 0
for i in 0..<input.count{
    sum += input[i]
}
switch sum {
case 3, 4:
    print(1)
case 5, 6:
    print(2)
default:
    print("해당되는 값 없음")
}
