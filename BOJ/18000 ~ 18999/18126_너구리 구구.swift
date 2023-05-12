let n = Int(readLine()!)!
var graph = [[(Int, Int)]](repeating: [], count: n + 1)
for _ in 0..<n - 1 {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1], c = input[2]
    graph[a].append((b, c))
    graph[b].append((a, c))
}
var visited = [Bool](repeating: false, count: n + 1)
var answer = 0

func dfs(node: Int, cost: Int) {
    visited[node] = true
    answer = max(answer, cost)
    
    for (nextNode, c) in graph[node] {
        if !visited[nextNode] {
            dfs(node: nextNode, cost: c + cost)
        }
    }
}

dfs(node: 1, cost: 0)
print(answer)
