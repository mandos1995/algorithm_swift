// N, M을 구분하여 입력받기
let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let m = input[1]

// 방문한 위치를 저장하기 위해 맵을 생성하여 0으로 초기화
var d: [[Int]] = [[Int]](repeating: [Int](repeating: 0, count: m) , count: n)

// 현재 캐릭터의 X 좌표, Y좌표 방향을 입력받기
let directionInput = readLine()!.split(separator: " ").map { Int($0)! }
var x = directionInput[0]
var y = directionInput[1]
var direction = directionInput[2]
d[x][y] = 1 // 현재 좌표 방문 처리

// 전체 맵 정보를 입력받기

var array = [[Int]]()
for _ in 0..<n {
    array.append(readLine()!.split(separator: " ").map { Int($0)! })
}

// 북, 동, 남, 서 방향 정의
let dx = [-1, 0, 1, 0]
let dy = [0, 1, 0, -1]

// 왼쪽으로 회전
func turnLeft() {
    direction -= 1
    if direction == -1{
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
    // 회전한 이후 정면에 가보지 않은 칸이 존재하는 경우 이동
    if d[nx][ny] == 0 && array[nx][ny] == 0 {
        d[nx][ny] = 1
        x = nx
        y = ny
        count += 1
        turnTime = 0
        continue
    }
    // 회전한 이후 정면에 가보지 않은 칸이 없거나 바다인 경우
    else{
        turnTime += 1
    }
    // 네 방향 모두 갈 수 없는 경우
    if turnTime == 4{
        nx = x - dx[direction]
        ny = y - dy[direction]
        // 뒤로 갈 수 있다면 이동하기
        if array[nx][ny] == 0 {
            x = nx
            y = ny
        }
        else {
            break
        }
        turnTime = 0
    }
}
print(count)
