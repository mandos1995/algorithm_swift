let n = Int(readLine()!)!
var cache = [Int](repeating: 0, count: 1500001)
cache[1] = 1
for i in 2...1500000 {
    cache[i] = (cache[i - 1] % 1000000 + cache[i - 2] % 1000000) % 1000000
}

print(cache[n % 1500000])
