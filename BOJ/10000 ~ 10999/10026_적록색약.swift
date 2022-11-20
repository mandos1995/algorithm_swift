let n = Int(readLine()!)!
var graph: [[String]] = []
for _ in 0..<n {
    graph.append(readLine()!.map { String($0)} )
}
var visited = [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)

func isVaildCoord(y: Int, x: Int) -> Bool {
    return (0 <= y && y < n) && (0 <= x && x < n)
}

let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]

func dfs(y: Int, x: Int, color: String) {
    visited[y][x] = true
    for i in 0..<4 {
        let nx = x + dx[i]
        let ny = y + dy[i]
        if isVaildCoord(y: ny, x: nx) && !visited[ny][nx] && graph[ny][nx] == color {
            visited[ny][nx] = true
            dfs(y: ny, x: nx, color: color)
        }
    }
}
var count = 0
for y in 0..<n {
    for x in 0..<n {
        if !visited[y][x] && graph[y][x] == "R" {
            count += 1
            dfs(y: y, x: x, color: "R")
        }
        if !visited[y][x] && graph[y][x] == "G" {
            count += 1
            dfs(y: y, x: x, color: "G")
        }
        if !visited[y][x] && graph[y][x] == "B" {
            count += 1
            dfs(y: y, x: x, color: "B")
        }
    }
}
print(count, terminator: " ")

for y in 0..<n {
    for x in 0..<n {
        if graph[y][x] == "G" {
            graph[y][x] = "R"
        }
    }
}
visited = [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)
count = 0

for y in 0..<n {
    for x in 0..<n {
        if !visited[y][x] && graph[y][x] == "R" {
            count += 1
            dfs(y: y, x: x, color: "R")
        }
        if !visited[y][x] && graph[y][x] == "B" {
            count += 1
            dfs(y: y, x: x, color: "B")
        }
    }
}
print(count)
