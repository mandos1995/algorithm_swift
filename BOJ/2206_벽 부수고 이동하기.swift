let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var graph: [[Int]] = []
for _ in 0..<n {
    graph.append(readLine()!.map { Int(String($0))! })
}
var visited = [[[Bool]]](repeating: [[Bool]](repeating: [Bool](repeating: false, count: m), count: n), count: 2)

let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]

func isVaildCoord(y: Int, x: Int) -> Bool {
    return (0 <= y && y < n) && (0 <= x && x < m)
}
var queue = [(0, 0, 1, false)]
var isSuccessEscape = false

func bfs() {
    var index = 0
    while index < queue.count && !isSuccessEscape {
        let y = queue[index].0
        let x = queue[index].1
        let d = queue[index].2
        let isBreaked = queue[index].3
        if (y, x) == (n - 1, m - 1) {
            print(d)
            isSuccessEscape = true
            break
        }
        
        index += 1
        
        for i in 0..<4 {
            let ny = y + dy[i]
            let nx = x + dx[i]
            let nd = d + 1
            let isBreak = isBreaked
            
            if isVaildCoord(y: ny, x: nx) && graph[ny][nx] == 0 {
                if !isBreak &&  !visited[0][ny][nx] {
                    visited[0][ny][nx] = true
                    queue.append((ny, nx, nd, isBreak))
                } else if isBreak && !visited[1][ny][nx] {
                    visited[1][ny][nx] = true
                    queue.append((ny, nx, nd, isBreak))
                }
            } else if isVaildCoord(y: ny, x: nx) && graph[ny][nx] == 1 {
                if !isBreak && !visited[1][ny][nx] {
                    visited[1][ny][nx] = true
                    queue.append((ny, nx, nd, true))
                }
            }
        }
    }
}

bfs()

if !isSuccessEscape {
    print(-1)
}
