let n = Int(readLine()!)!
let m = Int(readLine()!)!
let INF = 1_234_567_890
var distances = [[Int]](repeating: [Int](repeating: INF, count: n), count: n)
var routes = [[[Int]]](repeating: [[Int]](repeating: [], count: n), count: n)
for i in 0..<n {
    distances[i][i] = 0
}

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0] - 1, b = input[1] - 1, cost = input[2]
    if distances[a][b] > cost {
        routes[a][b] = [a, b]
        distances[a][b] = cost
    }
}

for k in 0..<n {
    for a in 0..<n {
        for b in 0..<n {
            if distances[a][b] > distances[a][k] + distances[k][b] {
                distances[a][b] = distances[a][k] + distances[k][b]
                routes[a][b] = routes[a][k].dropLast() + routes[k][b]
            }
        }
    }
}

distances.forEach { distance in
    print(distance.map { $0 == INF ? 0 : $0 }.map { String($0) }.joined(separator: " "))
}

for i in 0..<n {
    for j in 0..<n {
        print(routes[i][j].count, routes[i][j].map { String($0 + 1) }.joined(separator: " "))
    }
}
