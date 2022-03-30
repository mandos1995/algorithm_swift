let n = Int(readLine()!)!
var dragonPosition: [(Int, Int, Int, Int)] = []

var graph = [[Bool]](repeating: [Bool](repeating: false, count: 202), count: 202)

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    dragonPosition.append((100 + input[1], 100 + input[0] ,input[2], input[3]))
}
let dy = [0, -1, 0, 1]
let dx = [1, 0 ,-1, 0]
var g = 0
var direction: [Int] = []
func drawDragon(y: Int, x: Int, d: Int, depth: Int) {
    if g == depth - 1 {
        return
    }
    graph[y][x] = true
    var d = d
    var ny = y
    var nx = x
    if depth < 2 {
        ny = y + dy[d]
        nx = x + dx[d]
        graph[ny][nx] = true
        direction.append(d)
        if d + 1 == 4 {
            d -= 3
        } else {
            d += 1
        }
        drawDragon(y: ny, x: nx, d: d, depth: depth + 1)
    } else {
        var new = Array(direction.map { $0 + 1 }.reversed())
        for (index, n) in new.enumerated() {
            if n == 4 {
                new[index] = 0
            }
        }
        direction = direction + new
        for dir in new {
            ny = ny + dy[dir]
            nx = nx + dx[dir]
            graph[ny][nx] = true
        }
        drawDragon(y: ny, x: nx, d: d, depth: depth + 1)
    }
    
}

for i in 0..<dragonPosition.count {
    let y = dragonPosition[i].0
    let x = dragonPosition[i].1
    let d = dragonPosition[i].2
    g = dragonPosition[i].3
    drawDragon(y: y, x: x, d: d, depth: 0)
    direction.removeAll()
}

var answer = 0
for y in 0..<201 {
    for x in 0..<201 {
        if graph[y][x] && graph[y][x + 1] && graph[y + 1][x + 1] && graph[y + 1][x] {
            answer += 1
        }
    }
}

print(answer)
