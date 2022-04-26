let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var graph = [[Int]](repeating: [Int](repeating: 0, count: 0), count: n + 1)
var reverseGraph = [[Int]](repeating: [Int](repeating: 0, count: 0), count: n + 1)

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1]
    graph[a].append(b)
    reverseGraph[b].append(a)
}

var visited = [Bool](repeating: false, count: n + 1)
var answer = 0
var count = 0
func dfs(v: Int, graph: [[Int]]) {
    visited[v] = true
    for nextNode in graph[v] {
        if !visited[nextNode] {
            visited[nextNode] = true
            count += 1
            dfs(v: nextNode, graph: graph)
        }
    }
}

for i in 1...n {
    visited = [Bool](repeating: false, count: n + 1)
    count = 0
    dfs(v: i, graph: graph)
    dfs(v: i, graph: reverseGraph)
    if count == n - 1 {
        answer += 1
    }
}

print(answer)
