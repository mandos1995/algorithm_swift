for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let w = input[0], h = input[1]
    var graph: [[String]] = []
    for _ in 0..<h {
        graph.append(readLine()!.map { String($0)})
    }
    var fire = [[Int]](repeating: [Int](repeating: 0, count: w), count: h)
    var visited = [[Bool]](repeating: [Bool](repeating: false, count: w), count: h)
    var fireVisited = [[Bool]](repeating: [Bool](repeating: false, count: w), count: h)
    var start = (0, 0, 0)
    var fireCoord: [(Int, Int, Int)] = []
    for y in 0..<h {
        for x in 0..<w {
            if graph[y][x] == "@" {
                start = (y, x, 0)
            }
            if graph[y][x] == "*" {
                fireCoord.append((y, x, 0))
            }
        }
    }
    var queue = [start]
    
    func isVaildCoord(y: Int, x: Int) -> Bool {
        return (0 <= y && y < h) && (0 <= x && x < w)
    }
    
    func isEscaped(y: Int, x: Int) -> Bool {
        return (0 == y || y == h - 1) || (0 == x || x == w - 1)
    }
    
    let dx = [1, 0, -1, 0]
    let dy = [0, 1, 0, -1]
    var isSuccessEscaped = false
    func bfs() {
        var index = 0
        var fireIndex = 0
        var peopleIndex = 0
        while index < queue.count && !isSuccessEscaped {
            index += 1
            let fireCount = fireCoord.count
            while fireIndex < fireCount && !isSuccessEscaped {
                let fired = fireCoord[fireIndex]
                let y = fired.0
                let x = fired.1
                let d = fired.2
                fire[y][x] = d
                for i in 0..<4 {
                    let ny = y + dy[i]
                    let nx = x + dx[i]
                    let nd = d + 1
                    
                    if isVaildCoord(y: ny, x: nx) && !fireVisited[ny][nx] && graph[ny][nx] != "#" {
                        fire[ny][nx] = nd
                        fireVisited[ny][nx] = true
                        fireCoord.append((ny, nx, nd))
                    }
                }
                fireIndex += 1
            }
            let peopleCount = queue.count
            while peopleIndex < peopleCount && !isSuccessEscaped{
                let people = queue[peopleIndex]
                let y = people.0
                let x = people.1
                let d = people.2
                if isEscaped(y: y, x: x) {
                    print(d + 1)
                    isSuccessEscaped = true
                    break
                }
                visited[y][x] = true
                for i in 0..<4 {
                    let ny = y + dy[i]
                    let nx = x + dx[i]
                    let nd = d + 1
                    
                    if isVaildCoord(y: ny, x: nx) && !fireVisited[ny][nx] && graph[ny][nx] == "." && !visited[ny][nx] {
                        visited[ny][nx] = true
                        queue.append((ny, nx, nd))
                    }
                }
                peopleIndex += 1
            }
            
            
            
        }
    }
    bfs()
    if !isSuccessEscaped {
        print("IMPOSSIBLE")
    }
}
