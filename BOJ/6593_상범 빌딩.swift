while true {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    if input == [0, 0, 0] {
        break
    }
    
    let l = input[0], r = input[1], c = input[2]
    var graph = [[[String]]](repeating: [[String]](repeating: [String](repeating: "", count: 0), count: 0), count: l)
    for i in 0..<l {
        for _ in 0..<r {
            graph[i].append(readLine()!.map { String($0)})
        }
        _ = readLine()!
    }
    var visited = [[[Bool]]](repeating: [[Bool]](repeating: [Bool](repeating: false, count: c), count: r), count: l)
    
    func isVaildCoord(z: Int, y: Int, x: Int) -> Bool {
        return (0 <= z && z < l) && (0 <= y && y < r) && (0 <= x && x < c)
    }
    
    let dx = [0, 0, 1, 0, -1, 0]
    let dy = [0, 0, 0, 1, 0, -1]
    let dz = [-1, 1, 0, 0, 0, 0]
    var startPoint = (0, 0, 0, 0)
    for z in 0..<l {
        for y in 0..<r {
            for x in 0..<c {
                if graph[z][y][x] == "S" {
                    startPoint = (z, y, x, 0)
                }
                
            }
        }
    }
    var queue = [startPoint]
    var isFailedEscaped = true
    func bfs() {
        while !queue.isEmpty {
            let removeQueue = queue.removeFirst()
            let d = removeQueue.3
            let z = removeQueue.0
            let y = removeQueue.1
            let x = removeQueue.2
            visited[z][y][x] = true
            
            if graph[z][y][x] == "E" {
                isFailedEscaped = false
                print("Escaped in \(d) minute(s).")
                break
            }
            
            for i in 0..<6 {
                let nz = z + dz[i]
                let ny = y + dy[i]
                let nx = x + dx[i]
                let nd = d + 1
                
                if isVaildCoord(z: nz, y: ny, x: nx) && !visited[nz][ny][nx] && graph[nz][ny][nx] != "#" {
                    visited[nz][ny][nx] = true
                    queue.append((nz, ny, nx, nd))
                }
            }
        }
        
    }
    bfs()
    if isFailedEscaped {
        print("Trapped!")
    }
}
