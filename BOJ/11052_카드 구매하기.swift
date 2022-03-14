let n = Int(readLine()!)!
var cache = readLine()!.split(separator: " ").map { Int($0)! }
cache.insert(0, at: 0)
if n > 1 {
    for i in 2...n {
        for j in 0...i - 1 {
            cache[i] = max(cache[i], cache[i - j] + cache[j])
        }
    }
    
}
print(cache[n])
