let n = Int(readLine()!)!
let node = Int(readLine()!)!
var graph = [[Int]](repeating: [Int](repeating: 0, count: 0), count: n + 1)
for _ in 0..<node {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    graph[input[0]].append(input[1])
    graph[input[1]].append(input[0])
}

var visited = [Bool](repeating: false, count: n + 1)
var count = 0
func dfs(_ graph: [[Int]], _ v: Int) {
    visited[v] = true
    count += 1
    for i in graph[v] {
        if !visited[i] {
            dfs(graph, i)
        }
    }
}
dfs(graph, 1)

print(count - 1)
