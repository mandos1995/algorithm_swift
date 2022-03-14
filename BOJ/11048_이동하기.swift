let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var graph: [[Int]] = []
for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map { Int($0)! })
}
var cache = [[Int]](repeating: [Int](repeating: 0, count: m), count: n)
var xTotal = 0
for x in 0..<m {
    xTotal += graph[0][x]
    cache[0][x] = xTotal
}

var yTotal = 0
for y in 0..<n {
    yTotal += graph[y][0]
    cache[y][0] = yTotal
}

for y in 1..<n {
    for x in 1..<m {
        cache[y][x] = max(cache[y - 1][x - 1], cache[y - 1][x], cache[y][x - 1]) + graph[y][x]
    }
}

print(cache.flatMap { $0 }.max()!)
