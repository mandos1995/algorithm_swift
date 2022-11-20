let n = Int(readLine()!)!
var graph = [[Int]](repeating: [Int](repeating: 0, count: 0), count: n + 1)
for _ in 0..<n - 1 {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1]
    graph[a].append(b)
    graph[b].append(a)
}
var visited = [Bool](repeating: false, count: n + 1)

var queue = [(1, 1)]
var index = 0

while index < queue.count {
    let node = queue[index].0
    visited[node] = true
    for v in graph[node] {
        if !visited[v] {
            visited[v] = true
            queue.append((v, node))
        }
    }
    index += 1
}

queue.sort { $0.0 < $1.0 }
queue.removeFirst()
for q in queue {
    print(q.1)
}
