let n = Int(readLine()!)!
var cache = [Int](repeating: 0, count: n + 1)
cache[1] = 1
if n > 1 {
    for i in 2...n {
        cache[i] = cache[i - 1] + 1
        var j = 2
        while j * j <= i {
            cache[i] = min(cache[i], cache[i - j * j] + 1)
            j += 1
        }
    }
}
print(cache[n])
