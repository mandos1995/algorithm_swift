let input = readLine()!.split(separator: " ").map { Int($0)! }
let r = input[0], c = input[1]
let dx = [1, 1, 1, 0, -1, -1, -1, 0]
let dy = [1, 0, -1, -1, -1, 0, 1, 1]

var graph: [[Int]] = []
var visited = [[Bool]](repeating: [Bool](repeating: false, count: c), count: r)

for _ in 0..<r {
    graph.append(readLine()!.split(separator: " ").map { Int($0)! })
}

func bfs(y: Int, x: Int) {
    var queue = [(y, x)]
    var index = 0
    visited[y][x] = true
    
    while queue.count > index {
        let y = queue[index].0
        let x = queue[index].1
        
        for i in 0..<8 {
            let ny = y + dy[i]
            let nx = x + dx[i]
            
            guard 0..<r ~= ny && 0..<c ~= nx else { continue }
            
            if graph[ny][nx] > 0 && !visited[ny][nx] {
                visited[ny][nx] = true
                queue.append((ny, nx))
            }
        }
        index += 1
    }
}

var answer = 0

for y in 0..<r {
    for x in 0..<c {
        if graph[y][x] > 0 && !visited[y][x] {
            answer += 1
            bfs(y: y, x: x)
        }
            
    }
}

print(answer)
