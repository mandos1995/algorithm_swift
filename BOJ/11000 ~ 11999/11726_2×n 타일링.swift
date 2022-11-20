var dp = [Int](repeating: 0, count: 1001)
dp[1] = 1
dp[2] = 2

let n = Int(readLine()!)!
if n > 2 {
    for i in 3...n {
        dp[i] = (dp[i - 1] + dp[i - 2]) % 10007
    }
}

print(dp[n])
