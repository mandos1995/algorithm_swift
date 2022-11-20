let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1], k = input[2]
var board: [[Int]] = []
var visited = [[Bool]](repeating: [Bool](repeating: false, count: m), count: n)

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    board.append(input)
}

var answer = Int.min

func isVaildCoord(y: Int, x: Int) -> Bool {
    return 0..<n ~= y && 0..<m ~= x
}

func isAdj(y: Int, x: Int) -> Bool {
    let dy = [1, 0, -1, 0]
    let dx = [0, 1, 0, -1]
    
    for i in 0..<4 {
        if !isVaildCoord(y: y + dy[i], x: x + dx[i]) {
            continue
        }
        if visited[y + dy[i]][x + dx[i]] {
            return true
        }
    }
    return false
}

func dfs(index: Int, total: Int, startY: Int, startX: Int) {
    if index == k {
        answer = max(answer, total)
        return
    }
    
    for y in startY..<n {
        let sx = startY == y ? startX : 0
        for x in sx..<m {
            if !visited[y][x] && !isAdj(y: y, x: x){
                visited[y][x] = true
                dfs(index: index + 1, total: total + board[y][x], startY: y, startX: x)
                visited[y][x] = false
            } else {
                continue
            }
        }
    }
}

dfs(index: 0, total: 0, startY: 0, startX: 0)
print(answer)
