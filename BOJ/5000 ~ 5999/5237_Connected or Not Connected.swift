func solution() {
    var input = readLine()!.split(separator: " ").map { Int($0)! }
    let n = input.removeFirst(), m = input.removeFirst()
    var graph = [[Int]](repeating: [Int](repeating: 0, count: 0), count: n)
    for i in stride(from: 0, to: m * 2, by: 2) {
        graph[input[i]].append(input[i + 1])
        graph[input[i + 1]].append(input[i])
    }
    var visited = [Bool](repeating: false, count: n)
    
    func bfs(start: Int) {
        visited[start] = true
        var queue = [start]
        var index = 0
        
        while queue.count > index {
            let node = queue[index]
            
            for nextNode in graph[node] {
                if !visited[nextNode] {
                    visited[nextNode] = true
                    queue.append(nextNode)
                }
            }
            index += 1
        }
    }
    var count = 0
    for i in 0..<n {
        if !visited[i] {
            bfs(start: i)
            count += 1
        }
    }
    count > 1 ? print("Not connected.") : print("Connected.")
}
for _ in 0..<Int(readLine()!)! {
    solution()
}
