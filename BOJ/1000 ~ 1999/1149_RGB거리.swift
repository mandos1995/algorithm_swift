let n = Int(readLine()!)!
var graph: [[Int]] = []
for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map { Int($0)!} )
}

var cache = [[Int]](repeating: [Int](repeating: 0, count: 3), count: n)

for i in 0..<3 {
    cache[0][i] = graph[0][i]
}

for y in 1..<n {
    cache[y][0] = min(cache[y - 1][1], cache[y - 1][2]) + graph[y][0]
    cache[y][1] = min(cache[y - 1][0], cache[y - 1][2]) + graph[y][1]
    cache[y][2] = min(cache[y - 1][0], cache[y - 1][1]) + graph[y][2]
}

print(cache[n - 1].min()!)
