let n = Int(readLine()!)!
let INF = 1_234_567_890
var graph = [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)

for i in 0..<n - 1 {
    _ = readLine()
    let nodes = readLine()!.split(separator: " ").map { Int($0)! }
    nodes.forEach { graph[i][$0 - 1] = true }
}

for k in 0..<n {
    for a in 0..<n {
        for b in 0..<n {
            if graph[a][k] && graph[k][b] {
                graph[a][b] = true
            }
        }
    }
}

var answer = "NO CYCLE"

for i in 0..<n {
    if graph[0][i] && graph[i][i] {
        answer = "CYCLE"
        break
    }
}

print(answer)
