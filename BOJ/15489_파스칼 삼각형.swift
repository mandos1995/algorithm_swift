let input = readLine()!.split(separator: " ").map { Int($0)! }
let r = input[0], c = input[1], w = input[2]
var dp = [[Int]](repeating: [Int](repeating: 1, count: 31), count: 31)
for i in 2...30 {
    for j in 1...i {
        if i == j || j == 1 {
            continue
        } else {
            dp[i][j] = dp[i - 1][j] + dp[i - 1][j - 1]
        }
    }
}
var sum = 0
var step = c
for i in r...r + w - 1 {
    for j in c...step {
        sum += dp[i][j]
    }
    step += 1
}
print(sum)
