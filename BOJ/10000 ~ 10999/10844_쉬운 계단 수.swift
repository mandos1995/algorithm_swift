let n = Int(readLine()!)!
var cache = [[Int]](repeating: [Int](repeating: -1, count: 10), count: n + 1)

cache[1][0] = 0
for i in 1...9 {
    cache[1][i] = 1
}
if n > 1 {
    for y in 2...n {
        for x in 0...9 {
            if x == 0 {
                cache[y][x] = cache[y - 1][x + 1]
                cache[y][x] %= 1_000_000_000
                continue
            }
            
            if x == 9 {
                cache[y][x] = cache[y - 1][x - 1]
                cache[y][x] %= 1_000_000_000
                continue
            }
            cache[y][x] = cache[y - 1][x - 1] + cache[y - 1][x + 1]
            cache[y][x] %= 1_000_000_000
        }
    }
}

print(cache[n].reduce(0, +) % 1_000_000_000)
