let n = Int(readLine()!)!
var step = [Int](repeating: 0, count: 301)
for i in 0..<n {
    step[i] = Int(readLine()!)!
}
var dp = [Int](repeating: 0, count: 301)

dp[0] = 0
dp[1] = step[0]
dp[2] = step[0] + step[1]
if n > 2 {
    for i in 3...n {
        dp[i] = step[i - 1] + max(dp[i - 2], step[i - 2] + dp[i - 3])
    }
}

print(dp[n])
