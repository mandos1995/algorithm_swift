let n = Int(readLine()!)!
let m = Int(readLine()!)!
var graph = [[Int]](repeating: [Int](repeating: 0, count: 0), count: n + 1)

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1]
    graph[a].append(b)
    graph[b].append(a)
}

var queue = [(1, 0)]
var index = 0
var visited = [Bool](repeating: false, count: n + 1)

var answer = 0

while index < queue.count {
    let node = queue[index].0
    let depth = queue[index].1
    visited[node] = true
    
    if depth > 2 {
        index += 1
        continue
    }
    answer += 1
    
    for nextNode in graph[node] {
        if !visited[nextNode] {
            visited[nextNode] = true
            queue.append((nextNode, depth + 1))
        }
    }
    index += 1
}

print(answer - 1)
