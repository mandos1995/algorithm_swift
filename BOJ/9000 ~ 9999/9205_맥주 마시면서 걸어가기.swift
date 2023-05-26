func solution() {
    let n = Int(readLine()!)!
    let house = readLine()!.split(separator: " ").map { Int($0)! }
    var graph = [[Int]](repeating: [], count: n + 2)
    var visited = [Bool](repeating: false, count: n + 2)
    var edges = [house]
    for _ in 0..<n {
        edges.append(readLine()!.split(separator: " ").map { Int($0)! })
    }
    let end = readLine()!.split(separator: " ").map { Int($0)! }
    edges.append(end)
    
    for i in 0..<n + 1 {
        for j in i + 1..<n + 2 {
            if abs(edges[i][0] - edges[j][0]) + abs(edges[i][1] - edges[j][1]) <= 1_000 {
                graph[i].append(j)
                graph[j].append(i)
            }
        }
    }
    
    var queue = [0]
    var index = 0
    var answer = "sad"
    while queue.count > index {
        let current = queue[index]
        visited[current] = true
        
        if current == n + 1 {
            answer = "happy"
            break
        }
        
        for next in graph[current] {
            if !visited[next] {
                visited[next] = true
                queue.append(next)
            }
        }
        index += 1
    }
    
    print(answer)
}

let t = Int(readLine()!)!
for _ in 0..<t { solution() }
