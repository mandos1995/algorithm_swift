var graph = [[Int]](repeating: [Int](repeating: 0, count: 101), count: 101)

for _ in 0..<4 {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let x1 = input[0], y1 = input[1], x2 = input[2], y2 = input[3]
    for y in y1..<y2 {
        for x in x1..<x2 {
            graph[y][x] = 1
        }
    }
}
print(graph.flatMap { $0 }.reduce(0, +))
