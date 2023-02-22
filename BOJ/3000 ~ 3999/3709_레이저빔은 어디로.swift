func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let n = input[0], r = input[1]
    var graph = [[Bool]](repeating: [Bool](repeating: false, count: n + 1), count: n + 1)
    var visited = [[[Bool]]](repeating: [[Bool]](repeating: [Bool](repeating: false, count: n + 1), count: n + 1), count: 4)
    for _ in 0..<r {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        let y = input[0], x = input[1]
        graph[y][x] = true
    }
    let laserXY = readLine()!.split(separator: " ").map { Int($0)! }
    let laserY = laserXY[0], laserX = laserXY[1]
    
    let dy = [-1, 0, 1, 0]
    let dx = [0, 1, 0, -1]
    var index = 0
    
    if laserY == 0 {
        index = 2
    } else if laserY == n + 1 {
        index = 0
    } else if laserX == 0 {
        index = 1
    } else if laserX == n + 1 {
        index = 3
    }

    var x = laserX + dx[index]
    var y = laserY + dy[index]
    
    while true {
        if x == 0 || x == n + 1 || y == 0 || y == n + 1 {
            print(y, x)
            break
        }
        if visited[index][y][x] {
            print(0, 0)
            break
        }
        
        visited[index][y][x] = true
        
        if graph[y][x] {
            index += 1
            index %= 4
        }
        x += dx[index]
        y += dy[index]
     
    }
}

let t = Int(readLine()!)!
for _ in 0..<t { solution() }
