let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]

while let input = readLine()?.split(separator: " ").map({ Int($0)! }), input != [0, 0] {
    let w = input[0], h = input[1]
    var graph: [[Character]] = []
    for _ in 0..<h {
        graph.append(readLine()!.map { $0 })
    }
    var visited = [[Bool]](repeating: [Bool](repeating: false, count: w), count: h)
    
    func isValidCoord(y: Int, x: Int) -> Bool {
        return 0..<h ~= y && 0..<w ~= x
    }
    
    func bfs(y: Int, x: Int) {
        var queue = [(y, x)]
        var index = 0
        visited[y][x] = true
        
        while queue.count > index {
            let y = queue[index].0
            let x = queue[index].1
            
            for i in 0..<4 {
                let ny = y + dy[i]
                let nx = x + dx[i]
                
                if isValidCoord(y: ny, x: nx) && !visited[ny][nx] && graph[ny][nx] != "." {
                    visited[ny][nx] = true
                    queue.append((ny, nx))
                    graph[ny][nx] = "S"
                }
            }
            index += 1
        }
        
    }
    
    for y in 0..<h {
        for x in 0..<w {
            if graph[y][x] == "S" && !visited[y][x] {
                bfs(y: y, x: x)
            }
        }
    }
    graph.forEach { print(String($0)) }
}
