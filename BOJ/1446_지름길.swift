let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], d = input[1]
var cache = [Int](repeating: 0, count: d + 1)
for i in 1...d {
    cache[i] = i
}
var graph: [[Int]] = []
for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map { Int($0)! })
}

graph = graph.sorted { $0[0] < $1[0] }

for g in graph {
    let start = g[0], end = g[1], distance = g[2]
    if end <= d {
        if cache[end] > cache[start] + distance {
            cache[end] = cache[start] + distance
            for (index, depth) in (end...d).enumerated() {
                cache[depth] = min(cache[depth], cache[end] + index)
            }
        }
        
    }
}
print(cache[d])
