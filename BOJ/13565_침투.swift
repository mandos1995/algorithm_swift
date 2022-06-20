let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var graph: [[Int]] = []
for _ in 0..<n {
    graph.append(readLine()!.map { Int(String($0))! })
}

var visited = [[Bool]](repeating: [Bool](repeating: false, count: m), count: n)

let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]

func isVaildCoord(y: Int, x: Int) -> Bool {
    return 0..<n ~= y && 0..<m ~= x
}

func bfs(y: Int, x: Int) {
    var queue = [(y, x)]
    var index = 0
    visited[y][x] = true
    
    while queue.count > index {
        let y = queue[index].0
        let x = queue[index].1
        
        for i in 0..<4 {
            let ny = y + dy[i]
            let nx = x + dx[i]
            
            if isVaildCoord(y: ny, x: nx) && !visited[ny][nx] && graph[ny][nx] == 0 {
                queue.append((ny, nx))
                visited[ny][nx] = true
            }
        }
        index += 1
    }
}

for i in 0..<m {
    if !visited[0][i] {
        bfs(y: 0, x: i)
    }
}
var isSuccess = false
for i in 0..<m {
    if visited[n - 1][i] {
        isSuccess = true
        break
    }
}
isSuccess ? print("YES") : print("NO")
