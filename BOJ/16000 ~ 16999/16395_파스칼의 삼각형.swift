var cache = [[Int]](repeating: [Int](repeating: 0, count: 31), count: 31)
for i in 1...30 {
    cache[i][1] = 1
    cache[i][i] = 1
}

for i in 3...30 {
    for j in 2...i - 1 {
        cache[i][j] = cache[i - 1][j - 1] + cache[i - 1][j]
    }
}

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1]
print(cache[n][k])
