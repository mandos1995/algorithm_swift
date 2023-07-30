let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var graph = [[Int]](repeating: [], count: n + 1)
for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1], c = input[2]
    graph[a].append(b)
    graph[a].append(c)
}
var visited = [Bool](repeating: false, count: n + 1)
var answer = [Int](repeating: Int.max, count: n + 1)

var queue = [(1, 1)]
var index = 0

while queue.count > index {
    let node = queue[index].0
    let depth = queue[index].1
    answer[node] = min(depth, answer[node])
    visited[node] = true
    
    for nextNode in graph[node] {
        if !visited[nextNode] {
            queue.append((nextNode, depth + 1))
            visited[nextNode] = true
        }
    }
    index += 1
}

answer[1...].forEach { print($0) }
