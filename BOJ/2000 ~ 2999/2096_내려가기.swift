let n = Int(readLine()!)!
var maxCache = [[Int]](repeating: [Int](repeating: 0, count: 3), count: n)
var minCache = [[Int]](repeating: [Int](repeating: 0, count: 3), count: n)
var graph: [[Int]] = []
for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map { Int($0)! })
}

for i in 0..<3 {
    maxCache[0][i] = graph[0][i]
    minCache[0][i] = graph[0][i]
}

for i in 1..<n {
    for x in 0..<3 {
        if x == 0 {
            maxCache[i][x] = max(maxCache[i - 1][x], maxCache[i - 1][x + 1])
            minCache[i][x] = min(minCache[i - 1][x], minCache[i - 1][x + 1])
        }
        if x == 1 {
            maxCache[i][x] = max(maxCache[i - 1][x - 1], maxCache[i - 1][x], maxCache[i - 1][x + 1])
            minCache[i][x] = min(minCache[i - 1][x - 1], minCache[i - 1][x], minCache[i - 1][x + 1])
        }
        
        if x == 2 {
            maxCache[i][x] = max(maxCache[i - 1][x - 1], maxCache[i - 1][x])
            minCache[i][x] = min(minCache[i - 1][x - 1], minCache[i - 1][x])
        }
        maxCache[i][x] += graph[i][x]
        minCache[i][x] += graph[i][x]
    }
}

print(maxCache[n - 1].max()!, minCache[n - 1].min()!)
