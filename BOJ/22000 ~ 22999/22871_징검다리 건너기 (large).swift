import Foundation

let n = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map { Int($0)! }
let INF = 1_234_567_890
var cache = [Int](repeating: INF, count: n + 1)
cache[0] = 0

for i in 1..<n {
    for j in 0..<i {
        let value = max((i - j) * (1 + abs(array[i] - array[j])), cache[j])
        cache[i] = min(cache[i], value)
    }
}

print(cache[n - 1])
