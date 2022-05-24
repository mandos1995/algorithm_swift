let n = Int(readLine()!)!
var graph: [[Int]] = []
for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map { Int($0)! })
}

func isVaildCoord(y: Int, x: Int) -> Bool {
    return 0..<n ~= y && 0..<n ~= x
}

var visited = [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)

func bfs(y: Int, x: Int) -> Bool {
    var queue = [(y, x)]
    var index = 0
    
    while queue.count > index {
        let y = queue[index].0
        let x = queue[index].1
        
        if y == n - 1 && x == n - 1 {
            return true
        }
        let ny = y + graph[y][x]
        let nx = x + graph[y][x]
        
        if isVaildCoord(y: ny, x: x) && !visited[ny][x] {
            visited[ny][x] = true
            queue.append((ny, x))
        }
        
        if isVaildCoord(y: y, x: nx) && !visited[y][nx] {
            visited[y][nx] = true
            queue.append((y, nx))
        }
        index += 1
    }
    return false
}

bfs(y: 0, x: 0) ? print("HaruHaru") : print("Hing")
