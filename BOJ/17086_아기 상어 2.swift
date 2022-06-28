let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var graph: [[Int]] = []
for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map { Int($0)! })
}

let dx = [1, 0, -1, 0, 1, 1, -1, -1]
let dy = [0, -1, 0, 1, 1, -1, 1, -1]

func isVaildCoord(y: Int, x: Int) -> Bool {
    return 0..<n ~= y && 0..<m ~= x
}

var answer = 0

func getDistance(y: Int, x: Int, d: Int) {
    var queue = [(y, x, d)]
    var visited = [[Bool]](repeating: [Bool](repeating: false, count: m), count: n)
    var index = 0
    visited[y][x] = true
    while queue.count > index {
        let y = queue[index].0
        let x = queue[index].1
        let d = queue[index].2
        
        if graph[y][x] == 1 {
            answer = max(answer, d)
            break
        }
        
        for i in 0..<8 {
            let ny = y + dy[i]
            let nx = x + dx[i]
            
            if isVaildCoord(y: ny, x: nx) && !visited[ny][nx] {
                visited[ny][nx] = true
                queue.append((ny, nx, d + 1))
            }
        }
        index += 1
    }
}

for y in 0..<n {
    for x in 0..<m {
        getDistance(y: y, x: x, d: 0)
    }
}

print(answer)
