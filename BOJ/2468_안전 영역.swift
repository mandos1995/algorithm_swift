let n = Int(readLine()!)!
var graph: [[Int]] = []
for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map { Int($0)! })
}
var visited = [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)
let maxValue = graph.flatMap { $0 }.max()!
let minValue = graph.flatMap { $0 }.min()!

let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]

func isVaildCoord(y: Int, x: Int) -> Bool {
    return (0 <= y && y < n) && (0 <= x && x < n)
}
var count = 0
var maxCount = 0
func dfs(y: Int, x: Int, value: Int) {
    visited[y][x] = true
    
    for i in 0..<4 {
        let nx = x + dx[i]
        let ny = y + dy[i]
        
        if isVaildCoord(y: ny, x: nx) && !visited[ny][nx] && graph[ny][nx] > value {
            visited[ny][nx] = true
            dfs(y: ny, x: nx, value: value)
        }
    }
}

for value in 0...maxValue {
    for y in 0..<n {
        for x in 0..<n {
            if !visited[y][x] && graph[y][x] > value {
                count += 1
                dfs(y: y, x: x, value: value)
            }
        }
    }
    maxCount = max(maxCount,count)
    count = 0
    visited = [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)
}

print(maxCount)
