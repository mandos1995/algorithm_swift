let INF = 1_000_000_000
var dp = [Int](repeating: INF, count: 5006)
dp[3] = 1
dp[5] = 1

for i in 6...5000 {
    dp[i] = min(dp[i - 3], dp[i - 5]) + 1
}

let n = Int(readLine()!)!
dp[n] >= INF ? print(-1) : print(dp[n])
