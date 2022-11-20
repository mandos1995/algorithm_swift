let input = readLine()!.split(separator: " ").map { Int($0)! }
let r = input[0], c = input[1], t = input[2]
var graph: [[Int]] = []
for _ in 0..<r {
    graph.append(readLine()!.split(separator: " ").map { Int($0)! })
}

let dy = [0, 1, 0, -1]
let dx = [1, 0, -1, 0]

func isVaildCoord(y: Int, x: Int) -> Bool {
    return 0..<r ~= y && 0..<c ~= x
}

var up = (0, 0)
for y in 0..<r {
    if graph[y][0] == -1 {
        up = (y, 0)
        break
    }
}

let down = (up.0 + 1, 0)

// 미세먼지 퍼지기
func dustSpread() {
    var newGraph = graph
    for y in 0..<r {
        for x in 0..<c {
            if graph[y][x] > 0 {
                var count = 0
                for i in 0..<4 {
                    let ny = y + dy[i]
                    let nx = x + dx[i]
                    if isVaildCoord(y: ny, x: nx) && graph[ny][nx] != -1 {
                        count += 1
                        newGraph[ny][nx] += graph[y][x] / 5
                    }
                }
                newGraph[y][x] = newGraph[y][x] - ((graph[y][x] / 5) * count)
            }
        }
    }
    graph = newGraph
}

func upClean() {
    var newGraph = graph
    // 반시계방향
    // 맨위
    for x in 0..<c - 1 {
        newGraph[0][x] = graph[0][x + 1]
    }
    // 왼쪽
    for y in (1..<up.0).reversed() {
        newGraph[y][0] = graph[y - 1][0]
    }
    
    // 아래쪽
    for x in 0..<c - 1 {
        newGraph[up.0][x + 1] = graph[up.0][x]
    }
    
    // 오른쪽
    for y in 0..<up.0 {
        newGraph[y][c - 1] = graph[y + 1][c - 1]
    }
    newGraph[up.0][1] = 0
    
    // 시계방향
    // 맨위
    for x in 1..<c {
        newGraph[down.0][x] = graph[down.0][x - 1]
    }
    // 왼쪽
    for y in down.0 + 1..<r - 1 {
        newGraph[y][0] = graph[y + 1][0]
    }
    // 아래쪽
    for x in 0..<c - 1 {
        newGraph[r - 1][x] = graph[r - 1][x + 1]
    }
    // 오른쪽
    for y in down.0 + 1..<r {
        newGraph[y][c - 1] = graph[y - 1][c - 1]
    }
    newGraph[down.0][1] = 0
    graph = newGraph
}
for _ in 0..<t {
    dustSpread()
    upClean()
}
let answer = graph.flatMap { $0 }.filter { $0 > 0 }.reduce(0, +)
print(answer)
