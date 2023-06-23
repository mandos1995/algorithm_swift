let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var graph = [[Int]](repeating: [], count: n + 1)
var visited = [Bool](repeating: false, count: n + 1)
var answer = 0

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1]
    graph[b].append(a)
}

let startNode = Int(readLine()!)!

func dfs(node: Int) {
    visited[node] = true
    
    for nextNode in graph[node] {
        if !visited[nextNode] {
            visited[nextNode] = true
            answer += 1
            dfs(node: nextNode)
        }
    }
    
}

dfs(node: startNode)

print(answer)
