let t = Int(readLine()!)!
var dp = [[Int]](repeating: [Int](repeating: 0, count: 31), count: 31)
for i in 1..<31 {
    for j in 0..<31 {
        if i == j || j == 0 {
            dp[i][j] = 1
        } else {
            dp[i][j] = dp[i - 1][j - 1] + dp[i - 1][j]
        }
    }
}

for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map { Int(String($0))!}
    let r = input[0]
    let n = input[1]
    print(dp[n][r])
}
