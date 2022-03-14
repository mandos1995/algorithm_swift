let n = Int(readLine()!)!
var cache = [Int](repeating: 0, count: 31)
cache[0] = 1
cache[2] = 3

for i in 4...30 {
    if i % 2 == 1 {
        continue
    }
    cache[i] = 3 * cache[i - 2]
    for j in 0..<i - 2 {
        if j % 2 == 1 {
            continue
        }
        cache[i] += 2 * cache[j]
    }
}

print(cache[n])
