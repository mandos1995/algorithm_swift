let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let m = input[1]
var result = 0

// 한 줄씩 입력받아 확인
for _ in 0..<n{
    let data = readLine()!.split(separator: " ").map { Int($0)! }
    // 현재 줄에서 '가장 작은 수' 찾기
    let min_value = data.min()!
    // '가장 작은 수'들 중에서 가장 큰 수 찾기
    result = max(result, min_value)
}
print(result)
