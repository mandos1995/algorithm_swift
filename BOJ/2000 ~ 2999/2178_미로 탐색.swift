let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]

var graph = [[Int]](repeating: [Int](repeating: 0, count: 0), count: n)

for i in 0..<n {
    let input = readLine()!
    for j in input {
        graph[i].append(Int(String(j))!)
    }
}

let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]

func bfs(_ x: Int, _ y: Int) -> Int {
    var queue = [(x, y)]
    while !queue.isEmpty {
        let (x, y) = queue.removeFirst()
        
        for i in 0..<4 {
            let nx = x + dx[i]
            let ny = y + dy[i]
            
            if nx < 0 || ny < 0 || nx >= n || ny >= m {
                continue
            }
            
            if graph[nx][ny] == 0 {
                continue
            }
            
            if graph[nx][ny] == 1 {
                graph[nx][ny] = graph[x][y] + 1
                queue.append((nx, ny))
            }
        }
    }
    return graph[n - 1][m - 1]
}
print(bfs(0, 0))
