let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1], k = input[2]
var graph = [[String]](repeating: [String](repeating: ".", count: m + 1), count: n + 1)
for _ in 0..<k {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let r = input[0], c = input[1]
    graph[r][c] = "*"
}
var visited = [[Bool]](repeating: [Bool](repeating: false, count: m + 1), count: n + 1)

let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]
var count = 0
var maxCount = 0
func isVaildCoord(x: Int, y: Int) -> Bool {
    return (x >= 0 && x < m + 1) && (y >= 0 && y < n + 1)
}

func dfs(x: Int, y: Int) {
    visited[y][x] = true
    for i in 0..<4 {
        let nx = x + dx[i]
        let ny = y + dy[i]
        
        if isVaildCoord(x: nx, y: ny) && !visited[ny][nx] && graph[ny][nx] == "*" {
            visited[ny][nx] = true
            count += 1
            dfs(x: nx, y: ny)
        }
    }
}

for y in 1...n {
    for x in 1...m {
        if graph[y][x] == "*" && !visited[y][x] {
            count = 1
            visited[y][x] = true
            dfs(x: x, y: y)
            maxCount = max(maxCount, count)
        }
    }
}
print(maxCount)
