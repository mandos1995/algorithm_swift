let input = readLine()!.split(separator: " ").map { Int($0)! }
let r = input[0], c = input[1]
var visited = [[Bool]](repeating: [Bool](repeating: false, count: c), count: r)
var graph: [[String]] = []

for _ in 0..<r {
    graph.append(readLine()!.map { String($0) })
}

var totalWolf = 0
var totalSheep = 0

for y in 0..<r {
    for x in 0..<c {
        if graph[y][x] == "v" {
            totalWolf += 1
        }
        if graph[y][x] == "k" {
            totalSheep += 1
        }
    }
}

let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]

func isVaildCoord(y: Int, x: Int) -> Bool {
    return 0..<r ~= y && 0..<c ~= x
}

var wolfCount = 0
var sheepCount = 0

func bfs(y: Int, x: Int) {
    var queue = [(y, x)]
    visited[y][x] = true
    if graph[y][x] == "k" {
        sheepCount += 1
    }
    if graph[y][x] == "v" {
        wolfCount += 1
    }
    var index = 0
    while queue.count > index {
        let y = queue[index].0
        let x = queue[index].1
        for i in 0..<4 {
            let ny = y + dy[i]
            let nx = x + dx[i]
            
            if isVaildCoord(y: ny, x: nx) && !visited[ny][nx] && graph[ny][nx] != "#" {
                if graph[ny][nx] == "k" {
                    sheepCount += 1
                }
                if graph[ny][nx] == "v" {
                    wolfCount += 1
                }
                visited[ny][nx] = true
                queue.append((ny, nx))
            }
        }
        index += 1
    }
    
}

for y in 0..<r {
    for x in 0..<c {
        if !visited[y][x] && graph[y][x] != "#" {
            wolfCount = 0
            sheepCount = 0
            bfs(y: y, x: x)
            if sheepCount > wolfCount {
                totalWolf -= wolfCount
            } else {
                totalSheep -= sheepCount
            }
        }
    }
}

print(totalSheep, totalWolf)
