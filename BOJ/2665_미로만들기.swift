let n = Int(readLine()!)!
var graph: [[Int]] = []
for _ in 0..<n {
    graph.append(readLine()!.map { Int(String($0))! })
}
let INF = 1_000_000_000
var visited = [[Int]](repeating: [Int](repeating: INF, count: n), count: n)

func isVaildCoord(y: Int, x: Int) -> Bool {
    return 0..<n ~= y && 0..<n ~= x
}

let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]

func bfs(y: Int, x: Int) {
    var queue = [(y, x)]
    var index = 0
    visited[y][x] = 0
    while queue.count > index {
        let y = queue[index].0
        let x = queue[index].1
        for i in 0..<4 {
            let ny = y + dy[i]
            let nx = x + dx[i]
            if isVaildCoord(y: ny, x: nx) {
                if graph[ny][nx] == 1 {
                    if visited[ny][nx] > visited[y][x] {
                        visited[ny][nx] = visited[y][x]
                        queue.append((ny, nx))
                    }
                    
                } else {
                    if visited[ny][nx] > visited[y][x] + 1 {
                        visited[ny][nx] = visited[y][x] + 1
                        queue.append((ny, nx))
                    }
                }
            }
            
        }
        index += 1
    }
}
bfs(y: 0, x: 0)
print(visited[n - 1][n - 1])
