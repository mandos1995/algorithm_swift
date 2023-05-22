var board: [[Int]] = []
for _ in 0..<5 {
    board.append(readLine()!.split(separator: " ").map { Int($0)! })
}
var visited = [[Bool]](repeating: [Bool](repeating: false, count: 5), count: 5)
let coord = readLine()!.split(separator: " ").map { Int($0)! }
let y = coord[0], x = coord[1]
let dx = [1, 0, -1 ,0]
let dy = [0, 1, 0, -1]

func isValidCoord(y: Int, x: Int) -> Bool {
    return 0..<5 ~= y && 0..<5 ~= x
}

var eatCount = 0

func dfs(y: Int, x: Int, d: Int, count: Int) {
    if d > 3 {
        eatCount = max(eatCount, count)
        return
    }
    
    for i in 0..<4 {
        let ny = y + dy[i], nx = x + dx[i]
        if isValidCoord(y: ny, x: nx) && board[ny][nx] != -1 {
            let prev = board[y][x]
            board[y][x] = -1
            dfs(y: ny, x: nx, d: d + 1, count: count + prev)
            board[y][x] = prev
        }
    }
}
dfs(y: y, x: x, d: 0, count: 0)

print(eatCount > 1 ? 1 : 0)
