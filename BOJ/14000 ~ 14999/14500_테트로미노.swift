let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var graph: [[Int]] = []
var visited = [[Bool]](repeating: [Bool](repeating: false, count: m), count: n)

for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map { Int($0)! })
}
let dx = [1, 0, -1, 0]
let dy = [0, 1, 0 ,-1]

func isVaildCoord(y: Int, x: Int) -> Bool {
    return 0..<n ~= y && 0..<m ~= x
}
var answer = 0
func dfs(y: Int, x: Int, n: Int, score: Int) {
    if n == 4 {
        answer = max(answer, score)
        return
    }
    
    for i in 0..<4 {
        let nx = x + dx[i]
        let ny = y + dy[i]
        
        if isVaildCoord(y: ny, x: nx) && !visited[ny][nx] {
            visited[ny][nx] = true
            dfs(y: ny, x: nx, n: n + 1, score: score + graph[ny][nx])
            visited[ny][nx] = false
        }
    }
}
for y in 0..<n {
    for x in 0..<m {
        visited[y][x] = true
        dfs(y: y, x: x, n: 1, score: graph[y][x])
        visited[y][x] = false
        // ㅗ 모양
        if y + 1 < n && x + 2 < m {
            answer = max(answer, graph[y][x + 1] + graph[y + 1][x] + graph[y + 1][x + 1] + graph[y + 1][x + 2])
        }
        // ㅏ 모양
        if y + 2 < n && x + 1 < m {
            answer = max(answer, graph[y][x] + graph[y + 1][x] + graph[y + 1][x + 1] + graph[y + 2][x])
        }
        // ㅜ 모양
        if y + 1 < n && x + 2 < m {
            answer = max(answer, graph[y][x] + graph[y][x + 1] + graph[y][x + 2] + graph[y + 1][x + 1])
        }
        // ㅓ 모양
        if y + 2 < n && x + 1 < m {
            answer = max(answer, graph[y][x + 1] + graph[y + 1][x] + graph[y + 1][x + 1] + graph[y + 2][x + 1])
        }
    }
}
print(answer)
