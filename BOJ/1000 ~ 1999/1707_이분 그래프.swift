func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let v = input[0], e = input[1]
    var graph = [[Int]](repeating: [], count: v + 1)
    for _ in 0..<e {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        let a = input[0], b = input[1]
        graph[a].append(b)
        graph[b].append(a)
    }
    
    var visited = [Int](repeating: 0, count: v + 1)
    
    func bfs(node: Int) -> Bool {
        var queue = [(node, 1)]
        var index = 0
        visited[node] = 1
        
        while queue.count > index {
            let current = queue[index].0
            let color = queue[index].1
            
            for nextNode in graph[current] {
                if visited[nextNode] == 0 {
                    visited[nextNode] = color * -1
                    queue.append((nextNode, color * -1))
                    continue
                }
                if visited[nextNode] == color {
                    return false
                }
            }
            index += 1
        }
        return true
    }
    
    var answer = true
    
    for i in 1...v {
        if visited[i] == 0 && !bfs(node: i) {
            answer = false
            break
        }
    }
    print(answer ? "YES" : "NO")
}

let t = Int(readLine()!)!
for _ in 0..<t { solution() }
