let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1]
var cache = [[Int]](repeating: [Int](repeating: 0, count: n + 1), count: n + 1)
for i in 0...n {
    cache[i][0] = 1
    cache[i][i] = 1
}
if n > 1 {
    for y in 2...n {
        for x in 1...y - 1 {
            cache[y][x] = cache[y - 1][x - 1] + cache[y - 1][x]
            cache[y][x] %= 10007
        }
    }
}

print(cache[n][k])
