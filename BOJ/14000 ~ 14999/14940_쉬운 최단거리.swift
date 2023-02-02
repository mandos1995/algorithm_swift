let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var graph: [[Int]] = []
for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map { Int($0)! })
}

var visited = [[Int]](repeating: [Int](repeating: 0, count: m), count: n)

let dx = [1, 0, -1 ,0]
let dy = [0, 1, 0, -1]

func isValidCoord(y: Int, x: Int) -> Bool {
    return 0..<n ~= y && 0..<m ~= x
}

func bfs(y: Int, x: Int) {
    var queue = [(y, x, 0)]
    var index = 0
    visited[y][x] = 0
    
    while queue.count > index {
        let y = queue[index].0
        let x = queue[index].1
        let d = queue[index].2
        
        for i in 0..<4 {
            let ny = y + dy[i]
            let nx = x + dx[i]
            
            if isValidCoord(y: ny, x: nx) && visited[ny][nx] == 0 && graph[ny][nx] == 1 {
                visited[ny][nx] = d + 1
                queue.append((ny, nx, d + 1))
            }
        }
        index += 1
    }
}

for y in 0..<n {
    for x in 0..<m {
        if graph[y][x] == 2 {
            bfs(y: y, x: x)
        }
    }
}

for y in 0..<n {
    for x in 0..<m {
        if graph[y][x] == 1 && visited[y][x] == 0 {
            print(-1, terminator: " ")
            continue
        }
        print(visited[y][x], terminator: " ")
    }
    print()
}
