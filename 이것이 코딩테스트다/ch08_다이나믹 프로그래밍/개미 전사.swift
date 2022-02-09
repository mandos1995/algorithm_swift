// 정수 N을 입력받기
let n = Int(readLine()!)!
// 모든 식량 정보 입력받기
let array = readLine()!.split(separator: " ").map { Int($0)! }

// 앞서 계산된 결과를 저장하기 위한 DP 테이블 초기화
var d = [Int](repeating: 0, count: 101)

// 다이나믹 프로그래밍 진행(보텀업)
d[0] = array[0]
d[1] = max(array[0], array[1])
for i in 2..<n {
    d[i] = max(d[i - 2] + array[i], d[i - 1])
}

// 계산된 결과 출력
print(d[n - 1])
