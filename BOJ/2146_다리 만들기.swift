let n = Int(readLine()!)!
var graph: [[Int]] = []
for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map { Int($0)! })
}

var visited = [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)
let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]

func isVaildCoord(y: Int, x: Int) -> Bool {
    return 0..<n ~= y && 0..<n ~= x
}
var landNumber = 1
var edgePosition: [(Int, Int, Int, Int)] = []
func renameLand(y: Int, x: Int) {
    var index = 0
    var queue = [(y, x)]
    while index < queue.count {
        let y = queue[index].0
        let x = queue[index].1
        graph[y][x] = landNumber
        var isEgde = false
        for i in 0..<4 {
            let ny = y + dy[i]
            let nx = x + dx[i]
            if isVaildCoord(y: ny, x: nx) && !visited[ny][nx] && graph[ny][nx] != 0 {
                visited[ny][nx] = true
                graph[ny][nx] = landNumber
                queue.append((ny, nx))
            }
            if isVaildCoord(y: ny, x: nx) && graph[ny][nx] == 0 {
                isEgde = true
            }
        }
        if isEgde {
            edgePosition.append((landNumber, y, x, 0))
        }
        
        index += 1
    }
}

for y in 0..<n {
    for x in 0..<n {
        if !visited[y][x] && graph[y][x] != 0 {
            renameLand(y: y, x: x)
            landNumber += 1
        }
    }
}

var index = 0
visited = [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)
var answer = 1_000_000_000

var landNumberEdge = [] + [[(Int,Int,Int)]](repeating: [(Int, Int, Int)](repeating: (0, 0, 0), count: 0), count: landNumber)

for e in edgePosition {
    landNumberEdge[e.0].append((e.1, e.2, 0))
}

func bfs(landNumber: Int) {
    var queue = landNumberEdge[landNumber]
    var index = 0
    while index < queue.count {
        let y = queue[index].0
        let x = queue[index].1
        let d = queue[index].2
        visited[y][x] = true
        
        if graph[y][x] != 0 && graph[y][x] != landNumber {
            answer = min(answer, d - 1)
            index += 1
            continue
        }
        
        for i in 0..<4 {
            let ny = y + dy[i]
            let nx = x + dx[i]
            
            if isVaildCoord(y: ny, x: nx) && !visited[ny][nx] && graph[ny][nx] != landNumber {
                visited[ny][nx] = true
                queue.append((ny, nx, d + 1))
            }
        }
        index += 1
    }
}

for i in 1..<landNumber {
    bfs(landNumber: i)
    visited = [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)
}

print(answer)
