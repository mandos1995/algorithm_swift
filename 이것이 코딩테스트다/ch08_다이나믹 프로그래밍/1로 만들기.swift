// 정수 X를 입력받기
let x = Int(readLine()!)!

// 앞서 계산된 결과를 저장하기 위한 DP 테이블 초기화
var dp = [Int](repeating: Int.max, count: 30001)
dp[1] = 0

// 다이나믹 프로그래밍 진행 (보텀업)
if x > 1 {
    for i in 2...x + 1 {
        // 현재의 수에서 1을 빼는 경우
        dp[i] = dp[i - 1] + 1
        // 현재의 수가 2로 나누어 떨어지는 경우
        if i % 2 == 0 {
            dp[i] = min(dp[i], dp[i / 2] + 1)
        }
        // 현재의 수가 3으로 나누어 떨어지는 경우
        if i % 3 == 0 {
            dp[i] = min(dp[i], dp[i / 3] + 1)
        }
        // 현재의 수가 5로 나누어 떨어지는 경우
        if i % 5 == 0 {
            dp[i] = min(dp[i], dp[i / 5] + 1)
        }
    }
}
print(dp[x])
