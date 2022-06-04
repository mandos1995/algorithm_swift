let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1], r = input[2]
var graph = [[Int]](repeating: [Int](repeating: 0, count: 0), count: n + 1)
for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1]
    graph[a].append(b)
    graph[b].append(a)
}
graph = graph.map { $0.sorted(by: < )}
var visited = [(Int, Int)](repeating: (0, -1), count: n + 1)

func bfs(start: Int) {
    visited[start] = (start, 0)
    var queue = [(start, 0)]
    var index = 0
    var count = 2
    while queue.count > index {
        let startNode = queue[index].0
        let d = queue[index].1
        for nextNode in graph[startNode] {
            if visited[nextNode] == (0, -1) {
                visited[nextNode] = (count, d + 1)
                count += 1
                queue.append((nextNode, d + 1))
            }
        }
        index += 1
    }
}
bfs(start: r)
var answer = 0
for v in visited.dropFirst() {
    answer += v.0 * v.1
}
print(answer)
