let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1]
var cache = [[Int]](repeating: [Int](repeating: 0, count: n + 1), count: k + 1)

for i in 0...n {
    cache[1][i] = 1
}
if k > 1 {
    for i in 2...k {
        for j in 0...n {
            for k in 0...j {
                cache[i][j] += cache[i - 1][k]
                cache[i][j] %= 1_000_000_000
            }
        }
    }
}

print(cache[k][n] % 1_000_000_000)
