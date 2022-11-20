let input = readLine()!.split(separator: " ").map { Int($0)! }
let r = input[0], c = input[1]
var graph: [[String]] = []
for _ in 0..<r {
    graph.append(readLine()!.map { String($0) })
}
var startPoint = (0, 0, 0)
var endPoint = (0, 0)
var waterPoints: [(Int, Int)] = []
var visited = [[Bool]](repeating: [Bool](repeating: false, count: c), count: r)
var waterVisited = [[Bool]](repeating: [Bool](repeating: false, count: c), count: r)
for y in 0..<r {
    for x in 0..<c {
        if graph[y][x] == "S" {
            startPoint = (y, x, 0)
        }
        if graph[y][x] == "D" {
            endPoint = (y, x)
        }
        if graph[y][x] == "*" {
            waterPoints.append((y, x))
        }
    }
}

func isVaildCoord(y: Int, x: Int) -> Bool {
    return (0 <= y && y < r) && (0 <= x && x < c)
}

let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]

var queue = [startPoint]
var isSuccessEscaped = false
func bfs() {
    var index = 0
    var waterIndex = 0
    var animalIndex = 0
    while index < queue.count && !isSuccessEscaped {
        index += 1
        let waterCount = waterPoints.count
        while waterIndex < waterCount && !isSuccessEscaped {
            let y = waterPoints[waterIndex].0
            let x = waterPoints[waterIndex].1
            waterVisited[y][x] = true
            
            for i in 0..<4 {
                let ny = y + dy[i]
                let nx = x + dx[i]
                
                if isVaildCoord(y: ny, x: nx) && !waterVisited[ny][nx] && graph[ny][nx] != "X" && graph[ny][nx] != "D" {
                    waterVisited[ny][nx] = true
                    waterPoints.append((ny, nx))
                }
            }
            waterIndex += 1
        }

        let animalCount = queue.count
        while animalIndex < animalCount && !isSuccessEscaped {
            
            let y = queue[animalIndex].0
            let x = queue[animalIndex].1
            let d = queue[animalIndex].2
            visited[y][x] = true
            
            if (y, x) == endPoint {
                print(d)
                isSuccessEscaped = true
                break
            }
            
            for i in 0..<4 {
                let ny = y + dy[i]
                let nx = x + dx[i]
                let nd = d + 1
                
                if isVaildCoord(y: ny, x: nx) && !visited[ny][nx] && !waterVisited[ny][nx] && graph[ny][nx] != "X" {
                    visited[ny][nx] = true
                    queue.append((ny, nx, nd))
                }
            }
            animalIndex += 1
        }
    }
}
bfs()
if !isSuccessEscaped {
    print("KAKTUS")
}
