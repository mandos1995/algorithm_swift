let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1], m = input[2]
var h = n + 1
var graph = [[Int]](repeating: [Int](repeating: 0, count: 0), count: n + m + 1)
for _ in 0..<m {
    let station = readLine()!.split(separator: " ").map { Int($0)! }
    for s in station {
        graph[h].append(s)
        graph[s].append(h)
    }
    h += 1
}
var visited = [Bool](repeating: false, count: n + m + 1)
var queue = [(1, 1)]
var index = 0
let INF = 1_000_000_000
var answer = INF
while index < queue.count {
    let node = queue[index].0
    let depth = queue[index].1
    visited[node] = true
    
    if node == n {
        answer = min(depth, answer)
    }
    
    for next in graph[node] {
        if !visited[next] {
            visited[next] = true
            queue.append((next, depth + 1))
        }
    }
    index += 1
}
answer == INF ? print(-1) : print((answer + 1) / 2)
