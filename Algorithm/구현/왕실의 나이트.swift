// 현재 나이트의 위치 입력받기
let inputData = readLine()!
let endIdx = inputData.index(inputData.endIndex, offsetBy: -1)
let row = Int(String(inputData[endIdx]))!
let column = Int(inputData[inputData.startIndex].asciiValue!) - Int(UnicodeScalar("a").value) + 1

// 나이트가 이동할 수 있는 8가지 방향 정의
let steps = [(-2, -1), (-1, -2), (1, -2), (2, -1), (2, 1), (1, 2), (-1, 2), (-2, 1)]

// 8가지 방향에 대하여 각 위치로 이동이 가능한지 확인
var result = 0
for step in steps {
    // 이동하고자 하는 위치 확인
    let next_row = row + step.0
    let next_column = column + step.1
    // 해당 위치로 이동이 가능하다면 카운트 증가
    if next_row >= 1 && next_row <= 8 && next_column >= 1 && next_column <= 8 {
        result += 1
    }
    
}
print(result)
