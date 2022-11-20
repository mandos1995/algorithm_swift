let n = Int(readLine()!)!
var graph = [[(Int, Int)]](repeating: [(Int, Int)](repeating: (0, 0), count: 0), count: n + 1)

for _ in 0..<n - 1 {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1], d = input[2]
    graph[a].append((b, d))
    graph[b].append((a, d))
}

var visited = [Bool](repeating: false, count: n + 1)
var answer = 0
var d: [(Int, Int)] = []
func dfs(node: Int, depth: Int) {
    visited[node] = true
    d.append((node, depth))
    for nextNode in graph[node] {
        if !visited[nextNode.0] {
            visited[nextNode.0] = true
            dfs(node: nextNode.0, depth: depth + nextNode.1)
            visited[nextNode.0] = false
        }
    }
}

dfs(node: 1, depth: 0)

d = d.sorted {
    $0.1 > $1.1
}

let startNode = d[0].0

visited = [Bool](repeating: false, count: n + 1)
d.removeAll()
dfs(node: startNode, depth: 0)

d = d.sorted {
    $0.1 > $1.1
}

print(d[0].1)
