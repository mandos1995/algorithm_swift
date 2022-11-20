let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], t = input[1]

var graph = [[(Int, Int)]](repeating: [(Int, Int)](repeating: (0, 0), count: 0), count: n + 1)
var visited = [Bool](repeating: false, count: n + 1)

for _ in 0..<n - 1{
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1], d = input[2]
    graph[a].append((b, d))
    graph[b].append((a, d))
}

func bfs(start: Int, end: Int, d: Int) {
    var queue = [(start, d)]
    var index = 0
    
    while queue.count > index {
        let node = queue[index].0
        let d = queue[index].1
        visited[node] = true
        if node == end {
            print(d)
            break
        }
        
        for nextNode in graph[node] {
            if !visited[nextNode.0] {
                visited[nextNode.0] = true
                queue.append((nextNode.0, d + nextNode.1))
            }
        }
        index += 1
    }
}

for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let start = input[0], end = input[1]
    visited = [Bool](repeating: false, count: n + 1)
    bfs(start: start, end: end, d: 0)
}
