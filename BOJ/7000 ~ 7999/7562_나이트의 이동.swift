for _ in 0..<Int(readLine()!)! {
    let n = Int(readLine()!)!
    var graph = [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)
    let startPoint = readLine()!.split(separator: " ").map { Int($0)! }
    let endPoint = readLine()!.split(separator: " ").map { Int($0)! }
    var queue = [(startPoint[0], startPoint[1], 0)]
    let dx = [1, 2, 2, 1, -1, -2, -2, -1]
    let dy = [2, 1, -1, -2, -2, -1, 1, 2]
    
    func isVaildCoord(y: Int, x: Int) -> Bool {
        return (0 <= y && y < n) && (0 <= x && x < n)
    }
    
    func bfs() {
        var index = 0
        while index < queue.count {
            let y = queue[index].0
            let x = queue[index].1
            let d = queue[index].2
            graph[y][x] = true
            if (y, x) == (endPoint[0], endPoint[1]) {
                print(d)
                break
            }
            
            for i in 0..<8 {
                let ny = y + dy[i]
                let nx = x + dx[i]
                let nd = d + 1
                if isVaildCoord(y: ny, x: nx) && !graph[ny][nx] {
                    graph[ny][nx] = true
                    queue.append((ny, nx, nd))
                }
                
            }
            index += 1
        }
    }
    bfs()
}
