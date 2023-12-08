let n = Int(readLine()!)!
var graph = [[Int]](repeating: [], count: 26)
for _ in 0..<n {
    let input = readLine()!
    let a = Int(input.first!.asciiValue! - 97), b = Int(input.last!.asciiValue! - 97)
    graph[a].append(b)
    
}

func bfs(start: Int, end: Int) -> Bool {
    var queue: [Int] = [(start)]
    var index = 0
    var visited = [Bool](repeating: false, count: 26)
    visited[start] = true
    while queue.count > index {
        let currentNode = queue[index]
        visited[currentNode] = true
        if end == currentNode {
            return true
        }
        
        for nextNode in graph[currentNode] {
            if !visited[nextNode] {
                visited[nextNode] = true
                queue.append(nextNode)
            }
        }
        index += 1
    }
    return false
}

let m = Int(readLine()!)!
for _ in 0..<m {
    let input = readLine()!
    let a = Int(input.first!.asciiValue! - 97), b = Int(input.last!.asciiValue! - 97)
    print(bfs(start: a, end: b) ? "T" : "F")
}
