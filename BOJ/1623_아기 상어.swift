let n = Int(readLine()!)!
var graph: [[Int]] = []
for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map { Int($0)! })
}
var shark = (0, 0)
var visited = [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)
var size = 2
for y in 0..<n {
    for x in 0..<n {
        if graph[y][x] == 9 {
            shark.0 = y
            shark.1 = x
        }
    }
}

graph[shark.0][shark.1] = 0

var sharkTimeGraph = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)

let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]

func isVaildCoord(y: Int, x: Int) -> Bool {
    return 0..<n ~= y && 0..<n ~= x
}

var minX = 0
var minY = 0
var minTime = 0

func initBFS() {
    minX = 21
    minY = 21
    minTime = 401
    sharkTimeGraph = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
    visited = [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)
}
func bfs(y: Int, x: Int) {
    visited[y][x] = true
    var queue = [(y, x)]
    var index = 0
    while index < queue.count {
        let y = queue[index].0
        let x = queue[index].1
        
        for i in 0..<4 {
            let ny = y + dy[i]
            let nx = x + dx[i]
            
            if isVaildCoord(y: ny, x: nx) && graph[ny][nx] <= size && !visited[ny][nx] {
                visited[ny][nx] = true
                sharkTimeGraph[ny][nx] = sharkTimeGraph[y][x] + 1
                if graph[ny][nx] < size && graph[ny][nx] != 0 {
                    if minTime > sharkTimeGraph[ny][nx] {
                        minY = ny
                        minX = nx
                        minTime = sharkTimeGraph[ny][nx]
                    } else if minTime == sharkTimeGraph[ny][nx] {
                        if nx == minX {
                            if ny < minY {
                                minY = ny
                                minX = nx
                            }
                        } else if ny == minY {
                            if nx < minX {
                                minY = ny
                                minX = nx
                            }
                        } else {
                            if ny < minY {
                                minY = ny
                                minX = nx
                            }
                        }
                    }
                    
                }
                queue.append((ny, nx))
            }
        }
    index += 1
        
    }
}

var answer = 0
var eatCount = 0

while true {
    initBFS()
    bfs(y: shark.0, x: shark.1)
    if minY != 21 && minX != 21 && minTime != 401 {
        answer += sharkTimeGraph[minY][minX]
        eatCount += 1
        
        if eatCount == size {
            size += 1
            eatCount = 0
        }
        
        graph[minY][minX] = 0
        
        shark.0 = minY
        shark.1 = minX
    } else {
        break
    }
}

print(answer)
