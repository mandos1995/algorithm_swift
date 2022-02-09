var dp = [Int](repeating: 0, count: 1000001)
dp[1] = 1
dp[2] = 2
dp[3] = 4
for i in 4...1000000 {
    dp[i] = (dp[i - 3] + dp[i - 2] + dp[i - 1]) % 1000000009
}
for _ in 0..<Int(readLine()!)! {
    let n = Int(readLine()!)!
    print(dp[n])
}
