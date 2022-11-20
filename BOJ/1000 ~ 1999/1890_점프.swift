let n = Int(readLine()!)!
var graph: [[Int]] = []
for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map { Int($0)!} )
}

var cache = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
cache[0][0] = 1

for y in 0..<n {
    for x in 0..<n {
        if cache[y][x] != 0 {
            if x + graph[y][x] < n && graph[y][x] != 0 {
                cache[y][x + graph[y][x]] += cache[y][x]
            }
            if y + graph[y][x] < n && graph[y][x] != 0 {
                cache[y + graph[y][x]][x] += cache[y][x]
            }
        }
    }
}
print(cache[n - 1][n - 1])
