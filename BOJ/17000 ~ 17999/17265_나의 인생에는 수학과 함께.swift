func isValidCoord(y: Int, x: Int, n: Int) -> Bool {
    return 0..<n ~= y && 0..<n ~= x
}

func caculate(exp: [String]) -> Int {
    var nums: [Int] = []
    var opers: [String] = []
    
    for e in exp {
        if let num = Int(e) {
            nums.append(num)
        } else { opers.append(e) }
    }
    var answer = nums[0]
    for i in 0..<opers.count {
        if opers[i] == "+" {
            answer += nums[i + 1]
        } else if opers[i] == "*" {
            answer *= nums[i + 1]
        } else {
            answer -= nums[i + 1]
        }
    }
    return answer
}

let n = Int(readLine()!)!

let dy = [0, 1]
let dx = [1, 0]

var graph: [[String]] = []
for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map { String($0) })
}
var visited = [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)
var expression: [String] = []

func dfs(y: Int, x: Int, exp: String) {
    if y == n - 1 && x == n - 1 {
        expression.append(exp)
        return
    }
    for i in 0..<2 {
        let ny = y + dy[i]
        let nx = x + dx[i]
        if isValidCoord(y: ny, x: nx, n: n) && !visited[ny][nx] {
            visited[ny][nx] = true
            dfs(y: ny, x: nx, exp: exp + graph[ny][nx])
            visited[ny][nx] = false
        }
    }
}
dfs(y: 0, x: 0, exp: graph[0][0])
var maxAnswer = Int.min
var minAnswer = Int.max
for exp in expression {
    minAnswer = min(minAnswer, caculate(exp: exp.map { String($0) }))
    maxAnswer = max(maxAnswer, caculate(exp: exp.map { String($0) }))
}

print(maxAnswer, minAnswer)
