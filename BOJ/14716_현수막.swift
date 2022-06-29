let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var graph: [[Int]] = []
for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map { Int($0)! })
}

var visited = [[Bool]](repeating: [Bool](repeating: false, count: m), count: n)

let dx = [1, 0, -1, 0, 1, 1, -1, -1]
let dy = [0, 1, 0, -1, 1, -1, 1, -1]

func isVaildCoord(y: Int, x: Int) -> Bool {
    return 0..<n ~= y && 0..<m ~= x
}

func bfs(y: Int, x: Int) {
    var queue = [(y, x)]
    var index = 0
    while index < queue.count {
        let y = queue[index].0
        let x = queue[index].1
        visited[y][x] = true
        
        for i in 0..<8 {
            let ny = y + dy[i]
            let nx = x + dx[i]
            
            if isVaildCoord(y: ny, x: nx) && !visited[ny][nx] && graph[ny][nx] == 1 {
                visited[ny][nx] = true
                queue.append((ny, nx))
            }
        }
        index += 1
    }
}
var answer = 0
for y in 0..<n {
    for x in 0..<m {
        if !visited[y][x] && graph[y][x] == 1 {
            bfs(y: y, x: x)
            answer += 1
        }
    }
}
print(answer)
