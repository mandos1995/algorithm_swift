import Foundation

func bfs(start: Int, computers: [[Int]], visited: inout [Bool]) {
    var queue = [start]
    var index = 0
    visited[start] = true
    while queue.count > index {
        let node = queue[index]
        for (index, nextNode) in computers[node].enumerated() {
            if nextNode == 1 && !visited[index] {
                visited[index] = true
                queue.append(index)
            }
        }
        index += 1
    }
}
func solution(_ n:Int, _ computers:[[Int]]) -> Int {
    var visited = [Bool](repeating: false, count: n)
    var answer = 0
    for i in 0..<n {
        if !visited[i] {
            bfs(start: i, computers: computers, visited: &visited)
            answer += 1
        }
    }
    return answer
}
