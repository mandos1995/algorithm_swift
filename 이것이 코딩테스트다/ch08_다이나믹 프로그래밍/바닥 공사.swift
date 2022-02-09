// 정수 N을 입력받기
let n = Int(readLine()!)!

// 앞서 계산된 결과를 저장하기 위한 dp 테이블 초기화
var d = [Int](repeating: 0, count: 1001)

// 다이나믹 프로그래밍 진행(보텀업)
d[1] = 1
d[2] = 3
if n > 2 {
    for i in 3...n {
        d[i] = (d[i - 1] + 2 * d[i - 2]) % 796796
    }
}

// 계산된 결과 출력
print(d[n])
