// 연립 방정식 문제인듯
// sum - minus < 0 조건을 찾는게 힘들었다.
import Foundation
let input = readLine()!.split(separator: " ").map{ Int($0)! }
let sum = input[0]
let minus = input[1]
var answer = [Int]()
var a = 0
var b = 0
if sum - minus < 0 || (sum - minus) % 2 != 0 {
    print(-1)
}
else {
    a = (sum + minus) / 2
    b = (sum - a)
    print(max(a,b), min(a,b))
}
