let n = Int(readLine()!)!
var array: [[Int]] = []
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    array.append([Int](input[1...]))
}
var visited: [[Bool]] = []

for i in 0..<n {
    let visit = [Bool](repeating: false, count: array[i].count)
    visited.append(visit)
}

var isSuccess = false

func dfs(prev: Int, day: Int, selected: [Int]) {
    if isSuccess {
        return
    }
    
    if day == n {
        isSuccess = true
        selected.forEach { print($0) }
        return
    }
    
    for i in 0..<array[day].count {
        if array[day][i] != prev && !visited[day][i] {
            visited[day][i] = true
            dfs(prev: array[day][i], day: day + 1, selected: selected + [array[day][i]])
        }
    }
}

dfs(prev: 0, day: 0, selected: [])

if !isSuccess { print(-1) }
