let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var graph: [[Int]] = []

for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map { Int($0)! })
}

let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]

func isVaildCoord(y: Int, x: Int) -> Bool {
    return 0..<n ~= y && 0..<m ~= x
}

var variableGraph = graph
var visited = [[Bool]](repeating: [Bool](repeating: false, count: m), count: n)
var icePosition: [(Int, Int)] = []

for y in 0..<n {
    for x in 0..<m {
        if graph[y][x] != 0 {
            icePosition.append((y, x))
        }
    }
}

func meltIce() {
    var index = 0
    var newIcePosition: [(Int, Int)] = []
    while index < icePosition.count {
        let y = icePosition[index].0
        let x = icePosition[index].1
        var count = 0
        for i in 0..<4 {
            let ny = y + dy[i]
            let nx = x + dx[i]
            
            if isVaildCoord(y: ny, x: nx) && graph[ny][nx] == 0 {
                count += 1
            }
        }
        variableGraph[y][x] -= count
        if variableGraph[y][x] < 0 {
            variableGraph[y][x] = 0
        } else {
            newIcePosition.append((y, x))
        }
        index += 1
    }
    icePosition = newIcePosition
}

func bfs(y: Int, x: Int) {
    var queue = [(y, x)]
    var index = 0
    while index < queue.count {
        let y = queue[index].0
        let x = queue[index].1
        for i in 0..<4 {
            let ny = y + dy[i]
            let nx = x + dx[i]
            
            if isVaildCoord(y: ny, x: nx) && !visited[ny][nx] && graph[ny][nx] != 0 {
                visited[ny][nx] = true
                queue.append((ny, nx))
            }
        }
        index += 1
    }
}
var answer = 0
while true {
    var bfsCount = 0
    for y in 0..<n {
        for x in 0..<m {
            if graph[y][x] != 0 && !visited[y][x] {
                bfs(y: y, x: x)
                bfsCount += 1
            }
        }
    }
    if bfsCount > 1 {
        break
    }
    if bfsCount == 0 {
        answer = 0
        break
    }
    visited = [[Bool]](repeating: [Bool](repeating: false, count: m), count: n)
    meltIce()
    graph = variableGraph
    answer += 1
}

print(answer)
