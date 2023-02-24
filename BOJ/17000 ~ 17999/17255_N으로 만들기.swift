let target = readLine()!.map { String($0) }
var visited = Set<String>()
var answer = 0
func dfs(current: String, left: Int, right: Int, make: String) {
    if current == target.joined() && !visited.contains(make) {
        visited.insert(make)
        answer += 1
        return
    }
    
    if left > 0 {
        dfs(current: target[left - 1] + current, left: left - 1, right: right, make: make + target[left - 1] + current)
    }
    if right < target.count - 1 {
        dfs(current: current + target[right + 1], left: left, right: right + 1, make: make + current + target[right + 1])
    }
}

for i in 0..<target.count {
    dfs(current: target[i], left: i, right: i, make: target[i])
}

print(answer)
