// 떡의 개수(N)과 요청한 떡의 길이(M)을 입력받기
let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]

// 각 떡의 개별 높이 정보를 입력받기
let array = readLine()!.split(separator: " ").map { Int($0)! }

// 이진 탐색을 위한 시작점과 끝점 설정
var start = 0
var end = array.max()!

// 이진 탐색 수행(반복적)
var result = 0

while start <= end {
    let mid = (start + end) / 2
    
    // 잘랐을 떄 떡의 양 계산
    let total = array.map { $0 - mid }.filter { $0 >= 0 }.reduce(0, +)
    
    // 떡의 양이 부족한 경우 더 많이 자르기 (왼쪽 부분 탐색)
    if total < m {
        end = mid - 1
    } else {    // 떡의 양이 충분한 경우 덜 자르기 (오른쪽 부분 탐색)
        result = mid // 최대한 덜 잘랐을 때가 정답이므로, 여기에서 result에 기록
        start = mid + 1
    }
}

print(result)
