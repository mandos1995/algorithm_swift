let n = Int(readLine()!)!
let graph = [(0, 0)] + zip(1...n,readLine()!.split(separator: " ").map { Int($0)! }).map { ($0, $1) }
let input = readLine()!.split(separator: " ").map { Int($0)! }
let start = input[0], end = input[1]
var visited = [Bool](repeating: false, count: n + 1)
visited[start] = true
var queue = [(start, graph[start].1, 0)]
var index = 0
var answer = -1

while queue.count > index {
    let current = queue[index]
    let num = current.0
    let step = current.1
    let d = current.2
    
    visited[num] = true
    
    if num == end {
        answer = d
        break
    }
    
    var i = 1
    
    while num + i * step <= n {
        if !visited[num + i * step] {
            visited[num + i * step] = true
            queue.append((num + i * step, graph[num + i * step].1, d + 1))
        }
        i += 1
    }
    
    i = 1
    while num - i * step > 0 {
        if !visited[num - i * step] {
            visited[num - i * step] = true
            queue.append((num - i * step, graph[num - i * step].1, d + 1))
        }
        i += 1
    }
    
    index += 1
}

print(answer)
