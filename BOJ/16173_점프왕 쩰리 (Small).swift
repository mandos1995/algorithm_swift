let n = Int(readLine()!)!
var graph: [[Int]] = []
var visited = [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)

for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map { Int($0)! })
}

func isVaildCoord(y: Int, x: Int) -> Bool {
    return 0..<n ~= y && 0..<n ~= x
}

let dx = [1, 0]
let dy = [0, 1]

var queue = [(0, 0, graph[0][0])]
var index = 0

while queue.count > index {
    let y = queue[index].0
    let x = queue[index].1
    let d = queue[index].2
    visited[y][x] = true
    if d == -1 {
        break
    }
    for i in 0..<2 {
        let ny = y + (dy[i] * d)
        let nx = x + (dx[i] * d)
        
        if isVaildCoord(y: ny, x: nx) && !visited[ny][nx] {
            visited[ny][nx] = true
            queue.append((ny, nx, graph[ny][nx]))
        }
    }
    index += 1
}

if visited[n - 1][n - 1] {
    print("HaruHaru")
} else {
    print("Hing")
}
