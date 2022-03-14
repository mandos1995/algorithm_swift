let n = Int(readLine()!)!
var cache = [Int](repeating: 0, count: 91)
cache[1] = 1
cache[2] = 1
for i in 3...90 {
    cache[i] = cache[i - 2] + cache[i - 1]
}

print(cache[n])
