var dp = [Int](repeating: 0, count: 51)
dp[0] = 1
dp[1] = 1

let n = Int(readLine()!)!
if n > 1 {
    for i in 2...n {
        dp[i] = dp[i - 1] + dp[i - 2] + 1
    }
}

print(dp[n] % 1000000007)
