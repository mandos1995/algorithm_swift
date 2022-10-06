let n = Int(readLine()!)!
var graph = [[Int]](repeating: [Int](repeating: 0, count: 0), count: n + 1)
while true {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    if input == [-1, -1] { break }
    let a = input[0], b = input[1]
    graph[a].append(b)
    graph[b].append(a)
}


func bfs(start: Int) -> Int {
    var queue = [(start, 0)]
    var visited = [Int](repeating: -1, count: n + 1)
    var index = 0
    while index < queue.count {
        let current = queue[index].0
        let depth = queue[index].1
        visited[current] = depth
        
        for nextNode in graph[current] {
            if visited[nextNode] == -1 {
                queue.append((nextNode, depth + 1))
                visited[nextNode] = depth + 1
            }
        }
        index += 1
    }
    
    return visited.max()!
}
var answer = [Int](repeating: 0, count: n + 1)
for i in 1...n {
    answer[i] = bfs(start: i)
}

let score = answer[1...].min()!
let people = answer.enumerated().filter { $0.element == score }.map { $0.offset }
print(score, people.count)
print(people.map { String($0) }.joined(separator: " "))
