let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var graph = [[Int]](repeating: [], count: n + 1)
var reverseGraph = [[Int]](repeating: [], count: n + 1)

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1]
    graph[b].append(a)
    reverseGraph[a].append(b)
}

var visited = [Bool](repeating: false, count: n + 1)
var d = 0
var reverseD = 0

func dfs(node: Int) {
    visited[node] = true
    
    for nextNode in graph[node] {
        if !visited[nextNode] {
            d += 1
            dfs(node: nextNode)
        }
    }
}

func reverseDfs(node: Int) {
    visited[node] = true
    
    for nextNode in reverseGraph[node] {
        if !visited[nextNode] {
            reverseD += 1
            reverseDfs(node: nextNode)
        }
    }
}

var answer = 0
for i in 1...n {
    d = 0
    reverseD = 0
    visited = [Bool](repeating: false, count: n + 1)
    dfs(node: i)
    reverseDfs(node: i)
    if d >= (n + 1) / 2 || reverseD >= (n + 1) / 2 {
        answer += 1
    }
}
print(answer)
