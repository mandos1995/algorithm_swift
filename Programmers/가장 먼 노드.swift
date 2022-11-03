import Foundation

func solution(_ n: Int, _ edge: [[Int]]) -> Int {
    var graph = [[Int]](repeating: [Int](repeating: 0, count: 0), count: n + 1)
    for edge in edge {
        graph[edge[0]].append(edge[1])
        graph[edge[1]].append(edge[0])
    }
    
    var visited = [Int](repeating: -1, count: n + 1)
    
    var queue = [(1, 0)]
    visited[1] = 0
    var index = 0
    while index < queue.count {
        let node = queue[index].0
        let d = queue[index].1
        
        for nextNode in graph[node] {
            if visited[nextNode] == -1 {
                visited[nextNode] = d + 1
                queue.append((nextNode, d + 1))
            }
        }
        index += 1
    }
    let maxDistance = visited.max()!
    let answer = visited.filter { $0 == maxDistance }.count

    return answer
}
