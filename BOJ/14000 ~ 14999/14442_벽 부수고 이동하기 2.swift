let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1], k = input[2]
var graph: [[Character]] = []
for _ in 0..<n {
    graph.append(readLine()!.map { $0 })
}

var visited = [[Int]](repeating: [Int](repeating: k + 1, count: m), count: n)

func isValidCoord(y: Int, x: Int) -> Bool {
    return 0..<n ~= y && 0..<m ~= x
}

let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]

var queue = [(0, 0, 1, 0)]
var index = 0
var answer = -1

while queue.count > index {
    let y = queue[index].0
    let x = queue[index].1
    let d = queue[index].2
    let brokenCount = queue[index].3
    
    visited[y][x] = brokenCount
    
    if y == n - 1 && x == m - 1 {
        answer = d
        break
    }
    
    for i in 0..<4 {
        let ny = y + dy[i]
        let nx = x + dx[i]
        
        if !isValidCoord(y: ny, x: nx) {
            continue
        }
        
        if graph[ny][nx] == "0" && brokenCount <= k && visited[ny][nx] > brokenCount {
            visited[ny][nx] = brokenCount
            queue.append((ny, nx, d + 1, brokenCount))
            continue
        }
        
        if graph[ny][nx] == "1" && brokenCount < k && visited[ny][nx] > brokenCount + 1{
            visited[ny][nx] = brokenCount + 1
            queue.append((ny, nx, d + 1, brokenCount + 1))
        }
        
    }
    index += 1
}

print(answer)
