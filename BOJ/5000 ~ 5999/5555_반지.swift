import Foundation

let target = readLine()!
let n = Int(readLine()!)!
var answer = 0
for _ in 0..<n {
    let str = readLine()!
    answer += (str + str).contains(target) ? 1 : 0
}

print(answer)
