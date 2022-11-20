let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]

var graph = [[Bool]](repeating: [Bool](repeating: false, count: n + 1), count: n + 1)

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1]
    graph[a][b] = true
    graph[b][a] = true
}
func bfs(start: Int) -> Int {
    var queue = [(start, 0)]
    var index = 0
    var total = 0
    var visited = [Bool](repeating: false, count: n + 1)
    while index < queue.count {
        let node = queue[index].0
        let d = queue[index].1
        visited[node] = true
        total += d
        for i in 1...n {
            let nd = d + 1
            if graph[node][i] == true && !visited[i] {
                visited[i] = true
                queue.append((i,nd))
            }
        }
        index += 1
    }
    return total
}

var minScore = Int.max
var answer = 0
for i in 1...n {
    let score = bfs(start: i)
    if minScore > score {
        minScore = score
        answer = i
    }

}

print(answer)
