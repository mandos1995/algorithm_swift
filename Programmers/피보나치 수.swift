func solution(_ n:Int) -> Int {
    var dp = [Int](repeating: 0, count: n + 1)
    dp[0] = 0
    dp[1] = 1

    if n < 2 {
        return dp[n]
    }
    
    for i in 2...n {
        dp[i] = ((dp[i - 1] % 1234567) + (dp[i - 2] % 1234567)) % 1234567
    }
    
    return dp[n]
}
