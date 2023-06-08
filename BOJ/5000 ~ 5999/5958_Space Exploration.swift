let n = Int(readLine()!)!
let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]

var graph: [[Character]] = []
var visited = [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)

for _ in 0..<n {
    graph.append(readLine()!.map { $0 })
}

func dfs(y: Int, x: Int) {
    visited[y][x] = true
    
    for i in 0..<4 {
        let ny = y + dy[i]
        let nx = x + dx[i]
        
        guard 0..<n ~= ny && 0..<n ~= nx else {
            continue
        }
        
        if graph[ny][nx] == "*" && !visited[ny][nx] {
            visited[ny][nx] = true
            dfs(y: ny, x: nx)
        }
    }
}

var answer = 0

for y in 0..<n {
    for x in 0..<n {
        if graph[y][x] == "*" && !visited[y][x] {
            answer += 1
            dfs(y: y, x: x)
        }
    }
}

print(answer)
