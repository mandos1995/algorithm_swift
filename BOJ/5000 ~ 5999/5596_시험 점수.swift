import Foundation
let minguk = readLine()!.split(separator: " ").map{ Int($0)! }
let manse = readLine()!.split(separator: " ").map{ Int($0)! }
var mingukSum = 0
var manseSum = 0
for i in 0..<4{
    mingukSum += minguk[i]
    manseSum += manse[i]
}
print(max(mingukSum, manseSum))
