let input = readLine()!.split(separator: " ").map { Int($0)! }
let r = input[0], c = input[1], k = input[2]
let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]
var graph: [[Character]] = []
for _ in 0..<r {
    graph.append(readLine()!.map { $0 })
}
var visited = [[Bool]](repeating: [Bool](repeating: false, count: c), count: r)
var answer = 0

func isValidCoord(y: Int, x: Int) -> Bool {
    return 0..<r ~= y && 0..<c ~= x
}

func dfs(y: Int, x: Int, d: Int) {
    if y == 0 && x == c - 1 {
        answer += d == k ? 1 : 0
        return
    }
    
    visited[y][x] = true
    
    for i in 0..<4 {
        let ny = y + dy[i]
        let nx = x + dx[i]
        
        if !isValidCoord(y: ny, x: nx) {
            continue
        }
        
        if !visited[ny][nx] && graph[ny][nx] != "T" {
            visited[ny][nx] = true
            dfs(y: ny, x: nx, d: d + 1)
            visited[ny][nx] = false
        }
    }
}

dfs(y: r - 1, x: 0, d: 1)

print(answer)
