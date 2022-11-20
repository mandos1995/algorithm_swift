let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]

var graph: [[Int]] = []

for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map { Int($0)! })
}
var visited = [[Bool]](repeating: [Bool](repeating: false, count: m), count: n)

let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]

func isVaildCoord(y: Int, x: Int) -> Bool {
    return 0..<n ~= y && 0..<m ~= x
}
var answer = 0
func wallSetting(d: Int) {
    if d == 3 {
        visited = [[Bool]](repeating: [Bool](repeating: false, count: m), count: n)
        var count = 0
        virusCount = 0
        for y in 0..<n {
            for x in 0..<m {
                if graph[y][x] == 2 {
                    bfs(y: y, x: x)
                }
            }
        }
        
        for y in 0..<n {
            for x in 0..<m {
                if graph[y][x] == 1 {
                    count += 1
                }
            }
        }
        answer = max(answer, n * m - count - virusCount)
        return
    }
    
    for y in 0..<n {
        for x in 0..<m {
            if graph[y][x] == 0 {
                graph[y][x] = 1
                wallSetting(d: d + 1)
                graph[y][x] = 0
            }
        }
    }
}
var virusCount = 0
func bfs(y: Int, x: Int) {
    var queue = [(y, x)]
    var index = 0
    virusCount += 1
    visited[y][x] = true
    while index < queue.count {
        let y = queue[index].0
        let x = queue[index].1
        
        for i in 0..<4 {
            let ny = y + dy[i]
            let nx = x + dx[i]
            if isVaildCoord(y: ny, x: nx) && !visited[ny][nx] && graph[ny][nx] == 0 {
                visited[ny][nx] = true
                virusCount += 1
                queue.append((ny, nx))
            }
        }
        index += 1
    }
}

wallSetting(d: 0)
print(answer)
