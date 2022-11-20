var n = Int(readLine()!)!
var dp = [Int](repeating: Int.max, count: n + 1)
var count = [Int](repeating: -1, count: n + 1)
dp[0] = 0
dp[1] = 0
count[1] = -1
if n > 1 {
    for i in 2...n {
        dp[i] = dp[i - 1] + 1
        count[i] = i - 1
        if i % 2 == 0 && dp[i] > dp[i / 2] + 1 {
            dp[i] = dp[i / 2] + 1
            count[i] = i / 2
        }
        if i % 3 == 0 && dp[i] > dp[i / 3] + 1{
            dp[i] = dp[i / 3] + 1
            count[i] = i / 3
        }
    }
}
print(dp[n])

while n != -1 {
    print(n, terminator: " ")
    n = count[n]
}
