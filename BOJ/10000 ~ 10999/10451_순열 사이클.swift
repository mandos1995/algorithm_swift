let t = Int(readLine()!)!
for _ in 0..<t {
    solution()
}

func solution() {
    let n = Int(readLine()!)!
    var graph = [[Int]](repeating: [], count: n + 1)
    var visited = [Bool](repeating: false, count: n + 1)
    var edges = zip((1...n).map { $0 }, readLine()!.split(separator: " ").map { Int($0)! }).map { ($0.0, $0.1 )}
    for edge in edges {
        let a = edge.0, b = edge.1
        graph[b].append(a)
    }
    var answer = 0
    
    func dfs(node: Int) {
        visited[node] = true
        for nextNode in graph[node] {
            if !visited[nextNode] {
                visited[nextNode] = true
                dfs(node: nextNode)
            }
        }
    }
    
    for i in 1...n {
        if !visited[i] {
            dfs(node: i)
            answer += 1
        }
    }
    print(answer)
}
