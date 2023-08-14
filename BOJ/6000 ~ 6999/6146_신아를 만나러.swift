let input = readLine()!.split(separator: " ").map { Int($0)! }
let x = input[0] + 500, y = input[1] + 500, n = input[2]
var graph = [[Bool]](repeating: [Bool](repeating: true, count: 1001), count: 1001)
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! + 500 }
    let x = input[0], y = input[1]
    graph[y][x] = false
}
var visited = [[Bool]](repeating: [Bool](repeating: false, count: 1001), count: 1001)

let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]

func isValidCoord(y: Int, x: Int) -> Bool {
    return 0...1000 ~= y && 0...1000 ~= x
}

var queue = [(y, x, 0)]
var index = 0

while queue.count > index {
    let y = queue[index].0
    let x = queue[index].1
    let d = queue[index].2
    
    visited[y][x] = true
    
    if y == 500 && x == 500 {
        print(d)
        break
    }
    
    for i in 0..<4 {
        let ny = y + dy[i]
        let nx = x + dx[i]
        
        if isValidCoord(y: ny, x: nx) && !visited[ny][nx] && graph[ny][nx] {
            visited[ny][nx] = true
            queue.append((ny, nx, d + 1))
        }
    }
    index += 1
}
