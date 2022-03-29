let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], l = input[1], r = input[2]
var graph: [[Int]] = []
for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map { Int($0)! })
}
var visited = [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)
let populationRange = l...r
func isVaildCoord(y: Int, x: Int) -> Bool {
    return 0..<n ~= y && 0..<n ~= x
}
let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]
var value = 0
var index = 0
var cnt = 1
var divideCount = 0
var groupPosition: [(Int, Int)] = []
func bfs(y: Int, x: Int) {
    visited[y][x] = true
    var queue = [(y, x)]
    value += graph[y][x]
    groupPosition = [(y, x)]
    while index < queue.count {
        let y = queue[index].0
        let x = queue[index].1
        for i in 0..<4 {
            let ny = y + dy[i]
            let nx = x + dx[i]
            if isVaildCoord(y: ny, x: nx) && !visited[ny][nx] && populationRange.contains(abs(graph[y][x] - graph[ny][nx])) {
                visited[ny][nx] = true
                value += graph[ny][nx]
                queue.append((ny, nx))
                groupPosition.append((ny, nx))
                cnt += 1
            }
        }
        index += 1
    }
    value /= cnt
}
var count = 0
var prevGraph = graph
while true {
    for y in 0..<n {
        for x in 0..<n {
            if !visited[y][x] {
                bfs(y: y, x: x)
            }
            for group in groupPosition {
                graph[group.0][group.1] = value
            }
            value = 0
            cnt = 1
            index = 0
            groupPosition.removeAll()
        }
    }
    divideCount += 1
    if prevGraph == graph {
        print(divideCount - 1)
        break
    }
    prevGraph = graph
    visited = [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)
}
