var graph: [[Character]] = []

for _ in 0..<10 {
    graph.append(readLine()!.map { $0 })
}

let dy = [0, 1, 0, -1]
let dx = [1, 0, -1, 0]

func isVaildCoord(y: Int, x: Int) -> Bool {
    return 0..<10 ~= y && 0..<10 ~= x
}
var startY = -1
var startX = -1
var endY = -1
var endX = -1

for y in 0..<10 {
    for x in 0..<10 {
        if graph[y][x] == "B" {
            startY = y
            startX = x
        }
        if graph[y][x] == "L" {
            endY = y
            endX = x
        }
    }
}

var queue = [(startY, startX, 0)]
var visitied = [[Bool]](repeating: [Bool](repeating: false, count: 10), count: 10)
var index = 0
var answer = -1
while queue.count > index {
    let y = queue[index].0
    let x = queue[index].1
    let d = queue[index].2
    
    visitied[y][x] = true
    
    if y == endY && x == endX {
        answer = d - 1
        break
    }
    
    for i in 0..<4 {
        let ny = y + dy[i]
        let nx = x + dx[i]
        
        if isVaildCoord(y: ny, x: nx) && !visitied[ny][nx] && graph[ny][nx] != "R" {
            visitied[ny][nx] = true
            queue.append((ny, nx, d + 1))
        }
    }
    index += 1
}

print(answer)
