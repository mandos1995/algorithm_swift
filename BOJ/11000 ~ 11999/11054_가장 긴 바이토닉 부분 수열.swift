let n = Int(readLine()!)!
var increaseArray = readLine()!.split(separator: " ").map { Int($0)! }
var decreaseArray = Array(increaseArray.reversed())

var increaseCache = [Int](repeating: 1, count: n)
var decreaseCache = [Int](repeating: 1, count: n)
var cache = [Int](repeating: 0, count: n)

for i in 0..<n - 1 {
    for j in i + 1..<n {
        if increaseArray[i] < increaseArray[j] {
            increaseCache[j] = max(increaseCache[i] + 1, increaseCache[j])
        }
        if decreaseArray[i] < decreaseArray[j] {
            decreaseCache[j] = max(decreaseCache[i] + 1, decreaseCache[j])
        }
        
    }
}

decreaseCache = Array(decreaseCache.reversed())

for i in 0..<n {
    cache[i] = increaseCache[i] + decreaseCache[i]
}

print(cache.max()! - 1)
