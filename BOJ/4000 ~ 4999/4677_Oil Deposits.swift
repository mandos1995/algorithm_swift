let dy = [1, 1, 0, -1, -1, -1, 0, 1]
let dx = [0, 1, 1, 1, 0, -1, -1, -1]

while let input = readLine()?.split(separator: " ").map({ Int($0)! }), input != [0, 0] {
    let h = input[0], w = input[1]
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
            
            for i in 0..<8 {
                let ny = dy[i] + y
                let nx = dx[i] + x
                
                if isValidCoord(y: ny, x: nx) && graph[ny][nx] == "@" && !visited[ny][nx] {
                    queue.append((ny, nx))
                    visited[ny][nx] = true
                }
            }
            index += 1
        }
    }
    
    var answer = 0
    
    for y in 0..<h {
        for x in 0..<w {
            if graph[y][x] == "@" && !visited[y][x] {
                bfs(y: y, x: x)
                answer += 1
            }
        }
    }
    
    print(answer)
}
