import Foundation

func solution(_ n:Int, _ results:[[Int]]) -> Int {
    var graph = [[Int]](repeating: [Int](repeating: 0, count: 0), count: n + 1)
    var reverseGraph = [[Int]](repeating: [Int](repeating: 0, count: 0), count: n + 1)
    
    for result in results {
        graph[result[0]].append(result[1])
        reverseGraph[result[1]].append(result[0])
    }
    var visited = [Bool](repeating: false, count: n + 1)
    var answer = 0
    var count = 0
    
    
    func dfs(node: Int, graph: [[Int]]) {
        visited[node] = true
        
        for nextNode in graph[node] {
            if !visited[nextNode] {
                visited[nextNode] = true
                count += 1
                dfs(node: nextNode, graph: graph)
            }
        }
    }
    
    for i in 1...n {
        visited = [Bool](repeating: false, count: n + 1)
        count = 0
        dfs(node: i, graph: graph)
        dfs(node: i, graph: reverseGraph)
        if count == n - 1 {
            answer += 1
        }
    }
    
    return answer
}
