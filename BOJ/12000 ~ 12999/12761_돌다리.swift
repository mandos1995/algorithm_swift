let input = readLine()!.split(separator: " ").map { Int($0)! }
let a = input[0], b = input[1], n = input[2], m = input[3]

var queue = [(n, 0)]
var index = 0
var visited = [Bool](repeating: false, count: 100_001)
visited[n] = true

while queue.count > index {
    let current = queue[index].0
    let count = queue[index].1
    
    if current == m {
        print(count)
        break
    }
    
    for i in [-1, 1, a, b, -a, -b] {
        let next = current + i
        if 0...100_000 ~= next && !visited[next] {
            visited[next] = true
            queue.append((next, count + 1))
        }
    }
    
    for i in [a, b] {
        let next = current * i
        if 0...100_000 ~= next && !visited[next] {
            visited[next] = true
            queue.append((next, count + 1))
        }
    }
    index += 1
}
