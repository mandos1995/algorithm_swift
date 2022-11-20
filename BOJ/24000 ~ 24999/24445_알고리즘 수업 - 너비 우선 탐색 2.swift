let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1], r = input[2]
var graph = [[Int]](repeating: [Int](repeating: 0, count: 0), count: n + 1)
for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1]
    graph[a].append(b)
    graph[b].append(a)
}
graph = graph.map { $0.sorted(by: > )}
var visited = [Int](repeating: 0, count: n + 1)

func bfs(start: Int) {
    visited[start] = 1
    var queue = [start]
    var index = 0
    var count = 2
    while queue.count > index {
        let startNode = queue[index]
        for nextNode in graph[startNode] {
            if visited[nextNode] == 0 {
                visited[nextNode] = count
                count += 1
                queue.append(nextNode)
            }
        }
        index += 1
    }
}
bfs(start: r)

for v in visited.dropFirst() {
    print(v)
}
