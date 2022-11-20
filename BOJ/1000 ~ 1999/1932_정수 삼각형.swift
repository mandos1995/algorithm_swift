let n = Int(readLine()!)!
var graph: [[Int]] = []
for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map { Int($0)!} )
}

var cache = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)

var leftTotal = 0
var rightTotal = 0
for i in 0..<n {
    leftTotal += graph[i][0]
    cache[i][0] = leftTotal
    
    rightTotal += graph[i][i]
    cache[i][i] = rightTotal
}
if n > 1 {
    for y in 2..<n {
        for x in 1..<y {
            cache[y][x] = max(cache[y - 1][x - 1], cache[y - 1][x]) + graph[y][x]
        }
    }
}

print(cache[n - 1].max()!)
