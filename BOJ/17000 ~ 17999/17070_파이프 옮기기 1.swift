let n = Int(readLine()!)!
var graph: [[Int]] = []
for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map { Int($0)! })
}
var answer = 0
func dfs(y: Int, x: Int, s: Int) {
    let isSuccessNextX = 0..<n - 1 ~= x && graph[y][x + 1] == 0
    let isSuccessNextY = 0..<n - 1 ~= y && graph[y + 1][x] == 0
    let isSuccessNextD = isSuccessNextX && isSuccessNextY && graph[y + 1][x + 1] == 0
    
    if (y, x) == (n - 1, n - 1) {
        answer += 1
        return
    }
    
    // 가로인 경우
    if s == 0 {
        if isSuccessNextX {
            dfs(y: y, x: x + 1, s: 0)
        }
        
        if isSuccessNextD {
            dfs(y: y + 1, x: x + 1, s: 2)
        }
    }
    // 세로인 경우
    else if s == 1 {
        if isSuccessNextY {
            dfs(y: y + 1, x: x, s: 1)
        }
        
        if isSuccessNextD {
            dfs(y: y + 1, x: x + 1, s: 2)
        }
    }
    // 대각선인경우
    else {
        if isSuccessNextX {
            dfs(y: y, x: x + 1, s: 0)
        }
        if isSuccessNextY {
            dfs(y: y + 1, x: x, s: 1)
        }
        if isSuccessNextD {
            dfs(y: y + 1, x: x + 1, s: 2)
        }
    }
}

dfs(y: 0, x: 1, s: 0)

print(answer)
