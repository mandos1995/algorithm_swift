let n = Int(readLine()!)!
var board = readLine()!.split(separator: " ").map { Int($0)! }
var visited = [Bool](repeating: false, count: n + 1)

var queue = [(0, 0)]
var index = 0
var answer = -1
while index < queue.count {
    let x = queue[index].0
    let count = queue[index].1
    visited[x] = true
    if x == n - 1 {
        answer = count
        break
    }
    
    for i in 0...board[x] {
        if x + i < n && !visited[x + i] {
            visited[x + i] = true
            queue.append((x + i, count + 1))
        }
    }
    index += 1
}

print(answer)
