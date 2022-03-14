let n = Int(readLine()!)!
var array = readLine()!.split(separator: " ").map { Int($0)! }
let INF = 1_000_000_000
var cache = [Int](repeating: -INF, count: n + 1)
cache[1] = array[0]
if n > 1 {
    for i in 2...n {
        cache[i] = max(cache[i - 1] + array[i - 1], array[i - 1])
    }
}

print(cache.max()!)
