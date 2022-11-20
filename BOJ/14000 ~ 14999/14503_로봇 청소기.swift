let inputMap = readLine()!.split(separator: " ").map { Int($0)! }
let n = inputMap[0]
let m = inputMap[1]

// 청소 처리했는지 저장
var d = [[Int]](repeating: [Int](repeating: 0, count: m), count: n)

// 로봇 청소기가 있는 칸의 좌표(r,c)와 바라보는 방향 입력받기
let robotLocation = readLine()!.split(separator: " ").map { Int($0)! }
var x = robotLocation[0]
var y = robotLocation[1]
var direction = robotLocation[2]
d[x][y] = 1 // 현재좌표 방문 처리

// 전체 맵 정보 입력받기
var array = [[Int]]()
for _ in 0..<n {
    array.append(readLine()!.split(separator: " ").map { Int($0)! })
}

// 북, 동, 남, 서 방향 정의
let dx = [-1, 0, 1, 0]
let dy = [0, 1, 0, -1]

// 왼쪽방향 회전함수
func turnLeft() {
    direction -= 1
    if direction == -1 {
        direction = 3
    }
}

// 시뮬레이션 시작
var count = 1
var turnTime = 0
while true {
    // 왼쪽으로 회전
    turnLeft()
    var nx = x + dx[direction]
    var ny = y + dy[direction]
    // 회전한 이후 청소하지 않은 칸이잇고 벽이 아닌경우
    if d[nx][ny] == 0 && array[nx][ny] == 0 {
        d[nx][ny] = 1
        x = nx
        y = ny
        count += 1
        turnTime = 0
        continue
    }
    // 회전한 이후 정면에 청소하지않은 칸이 없거나 벽인경우
    else {
        turnTime += 1
    }
    
    // 네 방향 모두 갈 수 없는 경우
    if turnTime == 4 {
        nx = x - dx[direction]
        ny = y - dy[direction]
        // 뒤로 갈수 있다면 이동하기
        if array[nx][ny] == 0 {
            x = nx
            y = ny
        }
        // 뒤가 벽인경우
        else{
            break
        }
        turnTime = 0
    }
}
print(count)
