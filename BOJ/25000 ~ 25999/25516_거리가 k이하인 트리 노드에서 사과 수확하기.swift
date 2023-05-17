let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1]
var graph = [[Int]](repeating: [], count: n)
var visited = [Bool](repeating: false, count: n)
for _ in 0..<n - 1 {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let p = input[0], c = input[1]
    graph[p].append(c)
}

let isApple = readLine()!.split(separator: " ").map { Int($0)! == 1 }

var queue = [(0, 0)]
var index = 0
var answer = 0

while queue.count > index {
    let node = queue[index].0
    let depth = queue[index].1
    
    if isApple[node] && depth <= k {
        answer += 1
    }
    
    for nextNode in graph[node] {
        if !visited[nextNode] {
            queue.append((nextNode, depth + 1))
        }
    }
    index += 1
}

print(answer)
