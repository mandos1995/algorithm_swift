let startPosition = readLine()!.split(separator: " ").map { Int($0)! - 1 }
let startX = startPosition[0], startY = startPosition[1]
let endPosition = readLine()!.split(separator: " ").map { Int($0)! - 1 }
let endX = endPosition[0], endY = endPosition[1]
let dx = [2, 1, -1, -2, -2, -1, 1, 2]
let dy = [1, 2, 2, 1, -1, -2, -2, -1]
var visited = [[Bool]](repeating: [Bool](repeating: false, count: 8), count: 8)

func isValidCoord(y: Int, x: Int) -> Bool {
    return 0..<8 ~= y && 0..<8 ~= x
}

var queue = [(startY, startX, 0)]
var index = 0

while queue.count > index {
    let y = queue[index].0
    let x = queue[index].1
    let d = queue[index].2
    visited[y][x] = true
    
    if y == endY && x == endX {
        print(d)
        break
    }
    
    for i in 0..<8 {
        let ny = y + dy[i]
        let nx = x + dx[i]
        
        if isValidCoord(y: ny, x: nx) && !visited[ny][nx] {
            visited[ny][nx] = true
            queue.append((ny, nx, d + 1))
        }
    }
    index += 1
}
