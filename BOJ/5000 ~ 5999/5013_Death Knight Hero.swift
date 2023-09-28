import Foundation

let n = Int(readLine()!)!
var answer = 0
for _ in 0..<n {
    answer += readLine()!.contains("CD") ? 0 : 1
}

print(answer)
