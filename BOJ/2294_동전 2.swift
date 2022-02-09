let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1]
var dp = [Int](repeating: 100001, count: k + 1)
var coins: [Int] = []
for _ in 0..<n {
    coins.append(Int(readLine()!)!)
}

dp[0] = 0
for coin in coins {
    if coin <= k {
        for j in coin...k {
            dp[j] = min(dp[j - coin] + 1, dp[j])
        }
    }
}

dp[k] == 100001 ? print(-1) : print(dp[k])
