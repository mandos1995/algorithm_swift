let n = Int(readLine()!)!
var graph: [[Int]] = []
for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map { Int($0)! })
}

var cache = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)

let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]

func isVaildCoord(y: Int, x: Int) -> Bool {
    return 0..<n ~= y && 0..<n ~= x
}

func dfs(y: Int, x: Int) -> Int {
    if cache[y][x] != 0 {
        return cache[y][x]
    }
    
    cache[y][x] = 1
    for i in 0..<4 {
        let ny = y + dy[i]
        let nx = x + dx[i]
        
        if isVaildCoord(y: ny, x: nx) && graph[y][x] < graph[ny][nx] {
            cache[y][x] = max(dfs(y: ny, x: nx) + 1, cache[y][x])
        }
    }
    return cache[y][x]
}

var answer = 0
for y in 0..<n {
    for x in 0..<n {
        answer = max(dfs(y: y, x: x), answer)
    }
}

print(answer)
