func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let s = input[0], t = input[1]
    var answer = 0
    var visited = [[Bool]](repeating: [Bool](repeating: false, count: 1001), count: 1001)
    func bfs(s: Int, t: Int, d: Int) {
        var queue = [(s, t, d)]
        var index = 0
        visited[s][t] = true
        while queue.count > index {
            let s = queue[index].0
            let t = queue[index].1
            let d = queue[index].2
            
            if s == t {
                answer = d
                break
            }
            if s * 2 <= t + 3 && !visited[s * 2][t + 3] {
                visited[s * 2][t + 3] = true
                queue.append((s * 2, t + 3, d + 1))
            }
            
            if !visited[s + 1][t] {
                visited[s + 1][t] = true
                queue.append((s + 1, t, d + 1))
            }
            index += 1
        }
    }
    bfs(s: s, t: t, d: 0)
    print(answer)
}

for _ in 0..<Int(readLine()!)! {
    solution()
}
