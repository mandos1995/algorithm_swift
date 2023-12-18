let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1]
let INF = 123_456_789
var graph = [[Int]](repeating: [Int](repeating: INF, count: n + 1), count: n + 1)

for i in 1...n {
    graph[i][i] = 0
}

for _ in 0..<k {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1]
    graph[a][b] = 1
    graph[b][a] = 1
}

for k in 1...n {
    for a in 1...n {
        for b in 1...n {
            graph[a][b] = min(graph[a][k] + graph[k][b], graph[a][b])
        }
    }
}

var isSmallWolrd = true

for i in 1...n {
    if !graph[i][1...].filter({ $0 > 6 }).isEmpty {
        isSmallWolrd = false
        break
    }
}
print(isSmallWolrd ? "Small World!" : "Big World!")
