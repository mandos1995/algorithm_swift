let n = Int(readLine()!)!
var cache = [Int](repeating: 0, count: 1000001)
cache[1] = 1
cache[2] = 2

for i in 3...1000000 {
    cache[i] = cache[i - 2] +  cache[i - 1]
    cache[i] %= 15746
}

print(cache[n])
