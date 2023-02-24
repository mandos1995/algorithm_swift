let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var visited = [[Bool]](repeating: [Bool](repeating: false, count: m), count: n)
let coord = readLine()!.split(separator: " ").map { Int($0)! - 1 }
let currentY = coord[0], currentX = coord[1], targetY = coord[2], targetX = coord[3]
var graph: [[Character]] = []
var answer = 0

let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]

for _ in 0..<n {
    graph.append(readLine()!.map { $0 })
}

func isValidCoord(y: Int, x: Int) -> Bool {
    return 0..<n ~= y && 0..<m ~= x
}

func bfs() {
    var queue = [(currentY, currentX, 1)]
    var index = 0
    visited[currentY][currentX] = true
    
    while queue.count > index {
        let y = queue[index].0
        let x = queue[index].1
        let cost = queue[index].2
        
        if graph[y][x] == "#" {
            print(cost)
            break
        }
        
        for i in 0..<4 {
            let ny = y + dy[i]
            let nx = x + dx[i]
            
            if isValidCoord(y: ny, x: nx) && !visited[ny][nx] {
                visited[ny][nx] = true
                if graph[ny][nx] == "1" {
                    graph[ny][nx] = "0"
                    queue.append((ny, nx, cost + 1))
                } else {
                    if index == queue.count - 1 {
                        queue.append((ny, nx, cost))
                    } else {
                        queue.insert((ny, nx, cost), at: index + 1)
                    }
                }
            }
        }
        index += 1
    }
}

bfs()
