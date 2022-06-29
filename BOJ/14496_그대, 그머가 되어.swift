let input = readLine()!.split(separator: " ").map { Int($0)! }
let start = input[0], end = input[1]
let input2 = readLine()!.split(separator: " ").map { Int($0)! }
let n = input2[0], m = input2[1]

var visited = [Bool](repeating: false, count: n + 1)
var graph = [[Int]](repeating: [Int](repeating: 0, count: 0), count: n + 1)

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1]
    graph[a].append(b)
    graph[b].append(a)
}

var answer = -1
func bfs(start: Int, end: Int, d: Int) {
    var queue = [(start, d)]
    var index = 0
    visited[start] = true
    if start == end {
        answer = 0
        return
    }
    
    while queue.count > index {
        let node = queue[index].0
        let d = queue[index].1
        
        if node == end {
            answer = d
            break
        }
        
        for nextNode in graph[node] {
            if !visited[nextNode] {
                visited[nextNode] = true
                queue.append((nextNode, d + 1))
            }
        }
        index += 1
    }
}

bfs(start: start, end: end, d: 0)
print(answer)
