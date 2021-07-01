let n = 5 // 데이터의 개수 N
let m = 5 // 찾고자 하는 부분합 M
let data = [1, 2, 3, 2, 5] // 전체 수열

var count = 0
var interval_sum = 0
var end = 0

// start를 차례대로 증가시키며 반복
for start in 0..<n{
    // end를 가능한 만큼 이동시키기
    while interval_sum < m && end < n {
        interval_sum += data[end]
        end += 1
    }
    // 부분합이 m일 때 카운트 증가
    if interval_sum == m {
        count += 1
    }
    interval_sum -= data[start]
}
print(count)
