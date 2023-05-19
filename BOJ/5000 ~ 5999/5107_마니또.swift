func solution(i: Int, n: Int) {
    var graph: [String: Set<String>] = [:]
    var visited: Set<String> = []
    var names: Set<String> = []
    for _ in 0..<n {
        let input = readLine()!.split(separator: " ").map { String($0) }
        let a = input[0], b = input[1]
        graph[a, default: []].insert(b)
        names.insert(a)
        names.insert(b)
    }
    
    var answer = 0
    
    func dfs(start: String, name: String, isFirst: Bool) {
        if start == name && !isFirst {
            answer += 1
            return
        }
        
        visited.insert(name)
        
        for nextName in graph[name, default: []] {
            if !visited.contains(nextName) || nextName == start {
                visited.insert(name)
                dfs(start: start, name: nextName, isFirst: false)
            }
        }
    }
    
    names.forEach {
        if !visited.contains($0) { dfs(start: $0, name: $0, isFirst: true) }
    }
    print(i, answer)
}

var i = 1
while let n = Int(readLine()!), n != 0 {
    solution(i: i, n: n)
    i += 1
}
