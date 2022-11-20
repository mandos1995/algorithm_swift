func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let n = input[0], m = input[1]
    var graph: [[Character]] = []
    for _ in 0..<n {
        graph.append(readLine()!.map { $0 })
    }
    var vistied = [[Bool]](repeating: [Bool](repeating: false, count: m), count: n)
    let dx = [1, 0, -1, 0]
    let dy = [0, 1, 0, -1]
    
    func isVaildCoord(y: Int, x: Int) -> Bool {
        return 0..<n ~= y && 0..<m ~= x
    }
    
    func bfs(y: Int, x: Int) {
        vistied[y][x] = true
        var queue = [(y, x)]
        var index = 0
        while queue.count > index {
            let y = queue[index].0
            let x = queue[index].1
            
            for i in 0..<4 {
                let ny = y + dy[i]
                let nx = x + dx[i]
                
                if isVaildCoord(y: ny, x: nx) && !vistied[ny][nx] && graph[ny][nx] == "#" {
                    vistied[ny][nx] = true
                    queue.append((ny, nx))
                }
            }
            index += 1
        }
    }
    
    var answer = 0
    for y in 0..<n {
        for x in 0..<m {
            if graph[y][x] == "#" && !vistied[y][x] {
                bfs(y: y, x: x)
                answer += 1
            }
        }
    }
    print(answer)
}

for _ in 0..<Int(readLine()!)! {
    solution()
}
