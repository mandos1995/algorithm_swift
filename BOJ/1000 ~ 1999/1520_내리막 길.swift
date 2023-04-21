let input = readLine()!.split(separator: " ").map { Int($0)! }
let m = input[0], n = input[1]
var graph: [[Int]] = []
for _ in 0..<m {
    graph.append(readLine()!.split(separator: " ").map { Int($0)! })
}
var cache = [[Int]](repeating: [Int](repeating: -1, count: n), count: m)
let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]

func isValidCoord(y: Int, x: Int) -> Bool {
    return 0..<m ~= y && 0..<n ~= x
}

func dfs(y: Int, x: Int) -> Int {
    if y == m - 1 && x == n - 1 {
        return 1
    }
    
    if cache[y][x] != -1 {
        return cache[y][x]
    }
    
    cache[y][x] = 0
    
    for i in 0..<4 {
        let ny = y + dy[i]
        let nx = x + dx[i]
        if isValidCoord(y: ny, x: nx) && graph[y][x] > graph[ny][nx] {
            cache[y][x] += dfs(y: ny, x: nx)
        }
    }
    return cache[y][x]
}

print(dfs(y: 0, x: 0))
