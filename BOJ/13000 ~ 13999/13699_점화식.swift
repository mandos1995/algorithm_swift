let n = Int(readLine()!)!
var cache = [Int](repeating: 0, count: 36)

cache[0] = 1
cache[1] = 1
for i in 2...35 {
    for j in 0..<i {
        cache[i] += (cache[i - 1 - j] * cache[j])
    }
}
print(cache[n])
