let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var graph = [[Int]](repeating: [Int](repeating: 0, count: 0), count: n + 1)

// 연결된 정보를 리스트 자료형으로 표현
for _ in 0..<m {
    let node = readLine()!.split(separator: " ").map { Int($0)! }
    graph[node[0]].append(node[1])
    graph[node[1]].append(node[0])
}

// 그래프 정렬
graph = graph.map { $0.sorted { $0 < $1} }
var visited = [Bool](repeating: false, count: n + 1)
var count = 0
func dfs(v: Int) {
    visited[v] = true
    for i in graph[v] {
        if !visited[i] {
            visited[i] = true
            dfs(v: i)
        }
    }
    
}

// 방문하지 않았으면 dfs 실행 후 count 1 늘려주면서 모든 원소 확인

for i in 1...n {
    if !visited[i] {
        dfs(v: i)
        count += 1
    }
}

print(count)
