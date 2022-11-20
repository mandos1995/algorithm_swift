let input = readLine()!.split(separator: " ").map { Int($0)! }
let r = input[0], c = input[1]
var graph: [[String]] = []
for _ in 0..<r {
    graph.append(readLine()!.map { String($0)})
}

let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]
var visited = [[Bool]](repeating: [Bool](repeating: false, count: c), count: r)
func isVaildCoord(y: Int, x: Int) -> Bool {
    return 0..<r ~= y && 0..<c ~= x
}
var wolfCount = 0
var sheepCount = 0

for y in 0..<r {
    for x in 0..<c {
        if graph[y][x] == "v" {
            wolfCount += 1
        }
        if graph[y][x] == "o" {
            sheepCount += 1
        }
    }
}

func bfs(y: Int, x: Int, char: String) {
    visited[y][x] = true
    var queue = [(y, x, char)]
    var wolf = 0
    var sheep = 0
    var index = 0
    
    while index < queue.count {
        let y = queue[index].0
        let x = queue[index].1
        let char = queue[index].2
        
        if char == "v" {
            wolf += 1
        }
        if char == "o" {
            sheep += 1
        }
        for i in 0..<4 {
            let ny = y + dy[i]
            let nx = x + dx[i]
            
            if isVaildCoord(y: ny, x: nx) && !visited[ny][nx] && graph[ny][nx] != "#" {
                visited[ny][nx] = true
                queue.append((ny, nx, graph[ny][nx]))
            }
        }
        index += 1
    }
    
    if wolf >= sheep {
        sheepCount -= sheep
    } else {
        wolfCount -= wolf
    }
}

for y in 0..<r {
    for x in 0..<c {
        if !visited[y][x] && graph[y][x] != "#" {
            bfs(y: y, x: x, char: graph[y][x])
        }
    }
}

print(sheepCount, wolfCount)
