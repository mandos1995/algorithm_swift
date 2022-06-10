let n = Int(readLine()!)!

var graph: [[Character]] = []
for _ in 0..<n {
    graph.append(readLine()!.map { $0 })
}

var friendCount = [Int](repeating: 0, count: n)
func bfs(start: Int) {
    var queue = [(start, 0)]
    var index = 0
    var visited = [Bool](repeating: false, count: n)
    visited[start] = true
    var count = 0
    while queue.count > index {
        let node = queue[index].0
        let d = queue[index].1
        if d == 2 {
            index += 1
            continue
        }
        for (index, nextNode) in graph[node].enumerated() {
            if nextNode == "Y" && !visited[index] {
                visited[index] = true
                queue.append((index, d + 1))
            }
        }
        index += 1
    }
    for v in visited {
        if v {
            count += 1
        }
    }
    friendCount[start] = count - 1
}

for i in 0..<n {
    bfs(start: i)
}

print(friendCount.max()!)
