let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var graph: [[String]] = []
for _ in 0..<n {
    graph.append(readLine()!.map { String($0) })
}

var redMablePosition = (0, 0)
var blueMablePosition = (0, 0)
var holePosition = (0, 0)

for y in 0..<n {
    for x in 0..<m {
        if graph[y][x] == "R" {
            redMablePosition = (y, x)
        }
        
        if graph[y][x] == "B" {
            blueMablePosition = (y, x)
        }
        
        if graph[y][x] == "O" {
            holePosition = (y, x)
        }
    }
}
var visited = [[[[Bool]]]](repeating: [[[Bool]]](repeating: [[Bool]](repeating: [Bool](repeating: false, count: 11), count: 11), count: 11), count: 11)
var queue = [(redMablePosition.0, redMablePosition.1, blueMablePosition.0, blueMablePosition.1, 0)]
var index = 0
let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]
var answer = 11
while index < queue.count {
    let redY = queue[index].0
    let redX = queue[index].1
    let blueY = queue[index].2
    let blueX = queue[index].3
    let d = queue[index].4
    visited[redY][redX][blueY][blueX] = true
    if d > 10 {
        index += 1
        continue
    }
    
    if (redY, redX) == holePosition && (blueY, blueX) != holePosition && d < 11 {
        answer = min(answer, d)
        index += 1
        continue
    }
    
    for i in 0..<4 {
        var redDy = redY + dy[i]
        var redDx = redX + dx[i]
        var blueDy = blueY + dy[i]
        var blueDx = blueX + dx[i]
        
        while true {
            if graph[redDy][redDx] == "#" {
                redDy -= dy[i]
                redDx -= dx[i]
                break
            }
            
            if graph[redDy][redDx] == "O" {
                break
            }
            redDy += dy[i]
            redDx += dx[i]
        }
        
        while true {
            if graph[blueDy][blueDx] == "#" {
                blueDy -= dy[i]
                blueDx -= dx[i]
                break
            }
            if graph[blueDy][blueDx] == "O" {
                break
            }
            blueDy += dy[i]
            blueDx += dx[i]
        }
        if (redDy, redDx) == (blueDy, blueDx) && (blueDy, blueDx) != holePosition && (redDy, redDx) != holePosition {
            if redY > blueY {
                if i == 1 {
                    blueDy -= 1
                } else {
                    redDy += 1
                }
            } else if redY < blueY {
                if i == 1 {
                    redDy -= 1
                } else {
                    blueDy += 1
                }
            } else if redX > blueX {
                if i == 0 {
                    blueDx -= 1
                } else {
                    redDx += 1
                }
            } else {
                if i == 0 {
                    redDx -= 1
                } else {
                    blueDx += 1
                }
            }
        }
        
        
        if !visited[redDy][redDx][blueDy][blueDx] && (blueDy, blueDx) != holePosition {
            visited[redDy][redDx][blueDy][blueDx] = true
            queue.append((redDy, redDx, blueDy, blueDx, d + 1))
        }
        
    }
    index += 1
    
}
answer == 11 ? print(-1) : print(answer)
