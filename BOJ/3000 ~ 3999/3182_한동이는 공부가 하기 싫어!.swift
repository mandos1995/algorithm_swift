let n = Int(readLine()!)!
var graph = [[Int]](repeating: [], count: n + 1)
var visited = [Bool](repeating: false, count: n + 1)
for i in 1...n {
    let num = Int(readLine()!)!
    graph[i].append(num)
}
var answer = 0
var maxCount = 0

func dfs(start: Int, node: Int, count: Int) {
    visited[node] = true
    if count > maxCount {
        maxCount = count
        answer = start
    }
    for nextNode in graph[node] {
        if !visited[nextNode] {
            visited[nextNode] = true
            dfs(start: start, node: nextNode, count: count + 1)
        }
    }
}

for i in 1...n {
    visited = [Bool](repeating: false, count: n + 1)
    dfs(start: i, node: i, count: 0)
}

print(answer)
