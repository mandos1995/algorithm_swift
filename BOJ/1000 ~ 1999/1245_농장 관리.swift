let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var graph: [[Int]] = []
for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map { Int($0)! })
}

var visited = [[Bool]](repeating: [Bool](repeating: false, count: m), count: n)

func isVaildCoord(y: Int, x: Int) -> Bool {
    return 0..<n ~= y && 0..<m ~= x
}

let dx = [-1, -1, -1, 0, 0, 1, 1, 1]
let dy = [-1, 0, 1, -1, 1, -1, 0, 1]

func bfs(y: Int, x: Int, high: Int) {
    var queue = [(y, x, high)]
    var index = 0
    
    while queue.count > index {
        let y = queue[index].0
        let x = queue[index].1
        let high = queue[index].2
        visited[y][x] = true
        for i in 0..<8 {
            let ny = y + dy[i]
            let nx = x + dx[i]
            
            if isVaildCoord(y: ny, x: nx) {
                if high < graph[ny][nx] {
                    flag = false
                }
                if !visited[ny][nx] && high == graph[ny][nx] {
                    visited[ny][nx] = true
                    queue.append((ny, nx, graph[ny][nx]))
                }
            }
        }
        index += 1
    }
}
var answer = 0
var flag = true
for y in 0..<n {
    for x in 0..<m {
        if graph[y][x] > 0 && !visited[y][x] {
            flag = true
            bfs(y: y, x: x, high: graph[y][x])
            if flag {
                answer += 1
            }
        }
    }
}

print(answer)
