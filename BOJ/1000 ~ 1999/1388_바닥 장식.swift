let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var graph: [[String]] = []
for _ in 0..<n {
    graph.append(readLine()!.map { String($0) })
}
var visited = [[Bool]](repeating: [Bool](repeating: false, count: m), count: n)

func bfs(y: Int, x: Int) {
    var queue = [(y, x)]
    visited[y][x] = true
    var index = 0
    
    while index < queue.count {
        let ny = queue[index].0
        let nx = queue[index].1
        if graph[ny][nx] == "-" {
            if nx + 1 < m && graph[ny][nx + 1] == "-" && !visited[ny][nx + 1] {
                visited[ny][nx + 1] = true
                queue.append((ny, nx + 1))
            }
        } else {
            if ny + 1 < n && graph[ny + 1][nx] == "|" && !visited[ny + 1][nx] {
                visited[ny + 1][nx] = true
                queue.append((ny + 1, nx))
            }
        }
        index += 1
    }
}
var answer = 0
for y in 0..<n {
    for x in 0..<m {
        if !visited[y][x] {
            answer += 1
            bfs(y: y, x: x)
        }
    }
}
print(answer)
