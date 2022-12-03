let input = readLine()!.split(separator: " ").map { Int($0)! }
let r = input[0], c = input[1], q = input[2]
var graph: [[Int]] = []
graph.append([Int](repeating: 0, count: c + 1))
for _ in 1...r {
    graph.append([0] + readLine()!.split(separator: " ").map { Int($0)! })
}

var cache = [[Int]](repeating: [Int](repeating: 0, count: c + 1), count: r + 1)

var sumValue = 0

for i in 1...c {
    sumValue += graph[1][i]
    cache[1][i] = sumValue
}

sumValue = 0

for i in 1...r {
    sumValue += graph[i][1]
    cache[i][1] = sumValue
}

for y in 1...r {
    for x in 1...c {
        cache[y][x] = graph[y][x] + cache[y - 1][x] + cache[y][x - 1] - cache[y - 1][x - 1]
    }
}

for _ in 0..<q {
    let target = readLine()!.split(separator: " ").map { Int($0)! }
    let r1 = target[0], c1 = target[1], r2 = target[2], c2 = target[3]
    let mod = abs(r2 - r1 + 1) * abs(c2 - c1 + 1)
    print((cache[r2][c2] - cache[r1 - 1][c2] - cache[r2][c1 - 1] + cache[r1 - 1][c1 - 1]) / mod)
}
