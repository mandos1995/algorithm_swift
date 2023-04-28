let input = readLine()!.split(separator: " ").map { Int($0)! }
let v = input[0], e = input[1]
let INF = 1_234_567_890
var graph = [[Int]](repeating: [Int](repeating: INF, count: v + 1), count: v + 1)

for i in 1...v {
    graph[i][i] = 0
}

for _ in 0..<e {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1], c = input[2]
    graph[a][b] = c
}

for k in 1...v {
    for a in 1...v {
        for b in 1...v {
            graph[a][b] = min(graph[a][b], graph[a][k] + graph[k][b])
        }
    }
}

var answer = INF

for a in 1...v {
    for b in 1...v {
        if a == b {
            continue
        }
        answer = min(answer, graph[a][b] + graph[b][a])
    }
}

print(answer == INF ? -1 : answer)
