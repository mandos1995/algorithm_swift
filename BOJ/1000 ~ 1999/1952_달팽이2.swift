let input = readLine()!.split(separator: " ").map { Int($0)! }
let m = input[0], n = input[1]
var visited = [[Bool]](repeating: [Bool](repeating: false, count: n), count: m)
let dx = [1, 0, -1 ,0]
let dy = [0, 1, 0, -1]

func isValidCoord(y: Int, x: Int) -> Bool {
    return 0..<m ~= y && 0..<n ~= x
}

var i = 0
var answer = 0
func move(y: Int, x: Int) {
    visited[y][x] = true
    
    if !isValidCoord(y: y + dy[i], x: x + dx[i]) || visited[y + dy[i]][x + dx[i]] {
        i += 1
        i %= 4
        answer += 1
    }
    if !visited[y + dy[i]][x + dx[i]] {
        move(y: y + dy[i], x: x + dx[i])
    }
}

move(y: 0, x: 0)
print(answer - 1)
