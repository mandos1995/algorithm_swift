let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var graph = [[Int]](repeating: [], count: n + 1)
var visited = [Bool](repeating: false, count: n + 1)
for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1]
    graph[a].append(b)
    graph[b].append(a)
}

var queue = [1]
var index = 0

while queue.count > index {
    let node = queue[index]
    visited[node] = true
    
    for nextNode in graph[node] {
        if !visited[nextNode] {
            visited[nextNode] = true
            queue.append(nextNode)
        }
    }
    index += 1
}

if visited[1...].filter { !$0 }.isEmpty {
    print(0)
} else {
    for i in 1...n {
        if !visited[i] {
            print(i)
        }
    }
}
