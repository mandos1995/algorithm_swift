let n = Int(readLine()!)!
let m = Int(readLine()!)!
let INF = Int(1e10)
var graph = [[Int]](repeating: [Int](repeating: INF, count: n + 1), count: n + 1)

for i in 1...n {
    for j in 1...n {
        if i == j {
            graph[i][j] = 0
        }
    }
}

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1], c = input[2]
    graph[a][b] = min(graph[a][b], c)
}

for k in 1...n {
    for a in 1...n {
        for b in 1...n {
            graph[a][b] = min(graph[a][b], graph[a][k] + graph[k][b])
        }
    }
}

for i in 1...n {
    for j in 1...n {
        if graph[i][j] == INF {
            print(0, terminator: " ")
        } else {
            print(graph[i][j], terminator: " ")
        }
    }
    print()
}
