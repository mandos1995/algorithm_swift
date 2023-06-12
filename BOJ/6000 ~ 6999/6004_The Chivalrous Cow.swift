let input = readLine()!.split(separator: " ").map { Int($0)! }
let m = input[0], n = input[1]
let dx = [1, 2, 2, 1, -1, -2, -2, -1]
let dy = [2, 1, -1, -2, 2, 1, -1, -2]

var graph: [[Character]] = []

for _ in 0..<n {
    graph.append(readLine()!.map { $0 })
}

var visited = [[Bool]](repeating: [Bool](repeating: false, count: m), count: n)

func isValidCoord(y: Int, x: Int) -> Bool {
    return 0..<n ~= y && 0..<m ~= x
}

func bfs(y: Int, x: Int) {
    var queue = [(y, x, 0)]
    var index = 0
    
    visited[y][x] = true
    
    while queue.count > index {
        let y = queue[index].0
        let x = queue[index].1
        let d = queue[index].2
        
        if graph[y][x] == "H" {
            print(d)
            break
        }
        
        for i in 0..<8 {
            let ny = y + dy[i]
            let nx = x + dx[i]
            
            if isValidCoord(y: ny, x: nx) && graph[ny][nx] != "*" && !visited[ny][nx] {
                visited[ny][nx] = true
                queue.append((ny, nx, d + 1))
                
            }
        }
        index += 1
    }
    
}

for y in 0..<n {
    for x in 0..<m {
        if graph[y][x] == "K" {
            bfs(y: y, x: x)
            break
        }
    }
}
