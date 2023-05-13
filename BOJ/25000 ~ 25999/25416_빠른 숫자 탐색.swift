var graph: [[Int]] = []
for _ in 0..<5 {
    graph.append(readLine()!.split(separator: " ").map { Int($0)! })
}

var visited = [[Bool]](repeating: [Bool](repeating: false, count: 5), count: 5)
let input = readLine()!.split(separator: " ").map { Int($0)! }
let r = input[0], c = input[1]
let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]

var queue = [(r, c, 0)]
var index = 0
var answer = -1

while queue.count > index {
    let y = queue[index].0
    let x = queue[index].1
    let d = queue[index].2
    visited[y][x] = true
    
    if graph[y][x] == 1 {
        answer = d
        break
    }
    
    for i in 0..<4 {
        let ny = y + dy[i]
        let nx = x + dx[i]
        
        if 0..<5 ~= ny && 0..<5 ~= nx && !visited[ny][nx] && graph[ny][nx] != -1 {
            visited[ny][nx] = true
            queue.append((ny, nx, d + 1))
        }
    }
    index += 1
}

print(answer)
