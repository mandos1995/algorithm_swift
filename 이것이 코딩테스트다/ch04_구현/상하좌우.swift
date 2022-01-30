// N을 입력받기
let n = Int(readLine()!)!
var x = 1
var y = 1
let plans = readLine()!.split(separator: " ")

// L, R, U, D에 따른 이동 방향
let dx = [0, 0, -1, 1]
let dy = [-1, 1, 0, 0]
let moveTypes = ["L", "R", "U", "D"]

var nx = 0
var ny = 0
// 이동 계확을 하나씩 확인
for plan in plans {ç
    // 이동 후 좌표 구하기
    for i in 0..<moveTypes.count {
        if plan == moveTypes[i] {
            nx = x + dx[i]
            ny = y + dy[i]
        }
    }
    if nx < 1 || ny < 1 || nx > n || ny > n{
        continue
    }
    
    x = nx
    y = ny
}
print(x, y)
