import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = Int(pow(2, Double(input[0]))), q = input[1]
var graph: [[Int]] = []

for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map { Int($0)! })
}

let command = readLine()!.split(separator: " ").map { Int(pow(2, Double($0)!)) }
let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]

func isVaildCoord(y: Int, x: Int) -> Bool {
    return 0..<n ~= y && 0..<n ~= x
}

func rotate(sy: Int, sx: Int, n: Int) {
    var temp = [[Int]](repeating: [], count: n)
    var index = 0
    for y in sy..<sy + n {
        for x in sx..<sx + n {
            temp[index].append(graph[y][x])
        }
        index += 1
    }
    let copyTemp = temp
    for y in 0..<n {
        for x in 0..<n {
            temp[x][n - 1 - y] = copyTemp[y][x]
        }
    }
    for y in sy..<sy + n {
        for x in sx..<sx + n {
            graph[y][x] = temp[y - sy][x - sx]
        }
        index += 1
    }
}

func meltIce() {
    var meltIces: [(Int, Int)] = []
    for y in 0..<n {
        for x in 0..<n {
            if graph[y][x] == 0 {
                continue
            }
            
            var count = 0
            for i in 0..<4 {
                let ny = y + dy[i]
                let nx = x + dx[i]
                if isVaildCoord(y: ny, x: nx) && graph[ny][nx] > 0 {
                    count += 1
                }
            }
            
            if count < 3 {
                meltIces.append((y, x))
            }
        }
    }
    
    for ice in meltIces {
        graph[ice.0][ice.1] -= 1
    }
}

for cmd in command {
    for y in 0..<n / cmd {
        for x in 0..<n / cmd {
            rotate(sy: y * cmd, sx: x * cmd, n: cmd)
        }
    }
    meltIce()
}
var visited = [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)
func bfs(y: Int, x: Int) -> Int {
    var queue = [(y, x)]
    var index = 0
    var count = 0
    
    while queue.count > index {
        let y = queue[index].0
        let x = queue[index].1
        visited[y][x] = true
        count += 1
        for i in 0..<4 {
            let ny = y + dy[i]
            let nx = x + dx[i]
            
            if isVaildCoord(y: ny, x: nx) && !visited[ny][nx] && graph[ny][nx] > 0 {
                visited[ny][nx] = true
                queue.append((ny, nx))

            }
        }
        index += 1
    }
    return count
}
var answer = 0
for y in 0..<n {
    for x in 0..<n {
        if !visited[y][x] && graph[y][x] > 0 {
            answer = max(bfs(y: y, x: x), answer)
        }
    }
}

print(graph.flatMap { $0 }.reduce(0, +))
print(answer)
