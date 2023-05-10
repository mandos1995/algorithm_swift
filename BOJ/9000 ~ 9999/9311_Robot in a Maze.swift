let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]

func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let r = input[0], c = input[1]
    var maze: [[Character]] = []
    for _ in 0..<r {
        maze.append(readLine()!.map { $0 })
    }
    var visited = [[Bool]](repeating: [Bool](repeating: false, count: c), count: r)
    
    func isValidCoord(y: Int, x: Int) -> Bool {
        return 0..<r ~= y && 0..<c ~= x
    }
    
    func bfs(y: Int, x: Int) -> Bool {
        var queue = [(y, x, 0)]
        var index = 0
        visited[y][x] = true
        
        while queue.count > index {
            let y = queue[index].0
            let x = queue[index].1
            let d = queue[index].2
            
            visited[y][x] = true
            if maze[y][x] == "G" {
                print("Shortest Path: \(d)")
                return true
            }
            
            for i in 0..<4 {
                let ny = y + dy[i]
                let nx = x + dx[i]
                
                if isValidCoord(y: ny, x: nx) && !visited[ny][nx] && maze[ny][nx] != "X" {
                    visited[ny][nx] = true
                    queue.append((ny, nx, d + 1))
                }
            }
            index += 1
        }
        return false
    }
    
    for y in 0..<r {
        for x in 0..<c {
            if maze[y][x] == "S" && !bfs(y: y, x: x) {
                print("No Exit")
                return
            }
        }
    }
    
}

let t = Int(readLine()!)!
for _ in 0..<t { solution() }
