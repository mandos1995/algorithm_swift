let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1], k = input[2], x = input[3]
var graph = [[Int]](repeating: [Int](repeating: 0, count: 0), count: n + 1)
var visited = [Bool](repeating: false, count: n + 1)

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1]
    graph[a].append(b)
}

var queue: [(Int, Int)] = [(x, 0)]
var index = 0
var answer: [Int] = []
visited[x] = true
while index < queue.count {
    let node = queue[index].0
    let d = queue[index].1
    if d == k {
        answer.append(node)
        index += 1
        continue
    }
    
    for nextNode in graph[node] {
        if !visited[nextNode] {
            visited[nextNode] = true
            queue.append((nextNode, d + 1))
        }
    }
    index += 1
}

if answer.isEmpty {
    print(-1)
} else {
    answer.sorted(by: <).forEach {
        print($0)
    }
}
