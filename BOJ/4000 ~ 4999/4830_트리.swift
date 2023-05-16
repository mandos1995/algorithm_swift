var i = 1
while let input = readLine()?.split(separator: " ").map({ Int($0)! }), input != [0, 0] {
    let n = input[0], m = input[1]
    print("Case \(i): \(solution(n, m))")
    i += 1
}

func solution(_ n: Int, _ m: Int) -> String {
    var graph = [[Int]](repeating: [], count: n + 1)
    var visited = [Bool](repeating: false, count: n + 1)
    var isTree = false
    for _ in 0..<m {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        let a = input[0], b = input[1]
        graph[a].append(b)
        graph[b].append(a)
    }
    
    @discardableResult
    func dfs(prev: Int, current: Int) -> Bool {
        visited[current] = true
        
        for nextNode in graph[current] {
            if nextNode == prev {
                continue
            }
            if visited[nextNode] {
                isTree = false
                continue
            }
            dfs(prev: current, current: nextNode)
        }
        return isTree
    }
    
    var treeCount = 0
    
    for i in 1...n {
        if !visited[i] {
            isTree = true
            treeCount += dfs(prev: 0, current: i) ? 1 : 0
        }
    }
    switch treeCount {
    case 0:
        return "No trees."
    case 1:
        return "There is one tree."
    default:
        return "A forest of \(treeCount) trees."
    }
}
