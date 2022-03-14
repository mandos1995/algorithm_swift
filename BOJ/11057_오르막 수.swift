let n = Int(readLine()!)!
var cache = [[Int]](repeating: [Int](repeating: 0, count: 10), count: n + 1)
for i in 0...9 {
    cache[1][i] = 1
}
if n > 1 {
    for i in 2...n {
        for j in 0...9 {
            for k in j...9 {
                cache[i][j] += cache[i - 1][k]
                cache[i][j] %= 10007
            }
        }
    }
}
print(cache[n].reduce(0, +) % 10007)
