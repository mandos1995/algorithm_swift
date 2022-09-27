let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var graph = [[Int]](repeating: [Int](repeating: 0, count: 0), count: n + 1)
for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1]
    graph[a].append(b)
    graph[b].append(a)
}

var visited = [Int](repeating: -1, count: n + 1)
var maxDistance = 0
func bfs() {
    var queue = [(1, 0)]
    var index = 0
    visited[1] = 0
    while queue.count > index {
        let node = queue[index].0
        let d = queue[index].1
        maxDistance = max(maxDistance, d)
        for nextNode in graph[node] {
            if visited[nextNode] == -1 {
                visited[nextNode] = d + 1
                queue.append((nextNode, d + 1))
            }
        }
        index += 1
    }
}

bfs()

print(visited.firstIndex(of: maxDistance)!, maxDistance, visited.filter { $0 == maxDistance }.count)
