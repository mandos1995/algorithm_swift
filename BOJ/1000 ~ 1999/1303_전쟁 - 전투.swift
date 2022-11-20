let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var graph: [[Character]] = []
var visited = [[Bool]](repeating: [Bool](repeating: false, count: n), count: m)
for _ in 0..<m {
    graph.append(readLine()!.map { $0 })
}

let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]

func isVaildCoord(y: Int, x: Int) -> Bool {
    return 0..<m ~= y && 0..<n ~= x
}
var totalW = 0
var totalB = 0

func dfs(y: Int, x: Int, color: Character) {
    visited[y][x] = true
    if color == "W" {
        totalW += 1
    } else {
        totalB += 1
    }

    for i in 0..<4 {
        let ny = y + dy[i]
        let nx = x + dx[i]

        if isVaildCoord(y: ny, x: nx) && !visited[ny][nx] && graph[ny][nx] == color {
            dfs(y: ny, x: nx, color: color)

        }
    }
}

var answer = [0, 0]
for y in 0..<m {
    for x in 0..<n {
        if !visited[y][x] && graph[y][x] == "B" {
            dfs(y: y, x: x, color: "B")
            answer[1] += totalB * totalB
            totalB = 0
        }
        if !visited[y][x] && graph[y][x] == "W" {
            dfs(y: y, x: x, color: "W")
            answer[0] += totalW * totalW
            totalW = 0
        }
    }
}
print(answer[0], answer[1])
