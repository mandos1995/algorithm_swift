let n = Int(readLine()!)!
let graph = readLine()!.split(separator: " ").map { Int($0)! }
let start = Int(readLine()!)! - 1
var visited = [Bool](repeating: false, count: n)

func isVaildCoord(x: Int) -> Bool {
    return 0..<n ~= x
}

func dfs(node: Int) {
    visited[node] = true
    let dx = [node + graph[node], node - graph[node]]
    for x in dx {
        if isVaildCoord(x: x) && !visited[x] {
            visited[x] = true
            dfs(node: x)
        }
    }
}

var answer = 0
dfs(node: start)
for v in visited {
    if v {
        answer += 1
    }
}
print(answer)
