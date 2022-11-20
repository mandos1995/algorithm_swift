let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1], start = input[2]
var graph = [[Int]](repeating: [Int](repeating: 0, count: 0), count: n + 1)
for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1]
    graph[a].append(b)
    graph[b].append(a)
}

graph = graph.map { $0.sorted(by: { $0 < $1 })}

var visited = [Int](repeating: 0, count: n + 1)
var count = 1
func dfs(node: Int) {
    visited[node] = count
    for nextNode in graph[node] {
        if visited[nextNode] == 0 {
            count += 1
            dfs(node: nextNode)
        }
    }
}

dfs(node: start)

for i in 1...n {
    print(visited[i])
}
