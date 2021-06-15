import Foundation
let input = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let n = input[0]
let t = input[1]
let c = input[2]
let p = input[3]
var i = 1
var star = 0
while true{
    i += t
    if i > n{
        break
    }
    star += c
}
print(star * p)
