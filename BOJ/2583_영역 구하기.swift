let input = readLine()!.split(separator: " ").map { Int($0)! }
let m = input[0], n = input[1], k = input[2]
var graph = [[Bool]](repeating: [Bool](repeating: true, count: n), count: m)
var visited = [[Bool]](repeating: [Bool](repeating: false, count: n), count: m)
let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]
var count = 0
var answer: [Int] = []
for _ in 0..<k {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let startX = input[0], startY = input[1], endX = input[2], endY = input[3]
    for y in startY..<endY {
        for x in startX..<endX {
            graph[y][x] = false
        }
    }
}
func isVaildCoord(y: Int, x: Int) -> Bool {
    return (0 <= y && y < m) && (0 <= x && x < n)
}

func dfs(y: Int, x: Int) {
    visited[y][x] = true
    for i in 0..<4 {
        let nx = x + dx[i]
        let ny = y + dy[i]
        if  isVaildCoord(y: ny, x: nx) && graph[ny][nx] && !visited[ny][nx] {
            visited[ny][nx] = true
            count += 1
            dfs(y: ny, x: nx)
        }
    }
}

for y in 0..<m {
    for x in 0..<n {
        if graph[y][x] && !visited[y][x] {
            count = 1
            dfs(y: y, x: x)
            answer.append(count)
        }
    }
}
print(answer.count)
answer.sorted(by: <).forEach {
    print($0, terminator: " ")
}
