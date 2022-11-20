let input = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m, v) = (input[0], input[1], input[2])

var graph = [[Int]](repeating: [Int](repeating: 0, count: 0), count: n + 1)
for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    graph[input[0]].append(input[1])
    graph[input[1]].append(input[0])
}

graph = graph.map { $0.sorted() }

var visited = [Bool](repeating: false, count: n + 1)

func dfs(_ graph: [[Int]], _ v: Int) {
    visited[v] = true
    print(v, terminator: " ")
    
    for i in graph[v] {
        if !visited[i] {
            dfs(graph, i)
        }
    }
}

func bfs(_ graph: [[Int]], _ start: Int) {
    var queue = [start]
    
    visited[start] = true
    
    while !queue.isEmpty {
        let v = queue.removeFirst()
        print(v, terminator: " ")
        for i in graph[v] {
            if !visited[i] {
                queue.append(i)
                visited[i] = true
            }
        }
    }
}
dfs(graph, v)
print()
visited = [Bool](repeating: false, count: n + 1)

bfs(graph, v)
