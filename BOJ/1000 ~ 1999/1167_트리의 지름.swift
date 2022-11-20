let n = Int(readLine()!)!
var graph = [[(Int, Int)]](repeating: [(Int, Int)](repeating: (0, 0), count: 0), count: n + 1)

for _ in 1...n {
    let input = readLine()!.split(separator: " ").dropLast().map { Int($0)! }
    var index = 0
    while index < input.count - 1{
        graph[input[0]].append((input[index + 1], input[index + 2]))
        index += 2
    }
}

var visited = [Bool](repeating: false, count: n + 1)
var maxDistance = (0, 0)
func dfs(node: Int, depth: Int) {
    visited[node] = true
    
    if depth > maxDistance.1 {
        maxDistance = (node, depth)
    }
    
    for nextNode in graph[node] {
        if !visited[nextNode.0] {
            visited[nextNode.0] = true
            dfs(node: nextNode.0, depth: depth + nextNode.1)
            visited[nextNode.0] = false
        }
    }
}

dfs(node: 1, depth: 0)
visited = [Bool](repeating: false, count: n + 1)
dfs(node: maxDistance.0, depth: 0)

print(maxDistance.1)
