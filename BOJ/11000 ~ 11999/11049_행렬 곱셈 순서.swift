let n = Int(readLine()!)!
var matrix: [(Int, Int)] = [(0, 0)]
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    matrix.append((input[0], input[1]))
}

var cache = [[Int]](repeating: [Int](repeating: 0, count: n + 1), count: n + 1)

for size in 1..<n {
    for y in 1...n - size {
        cache[y][y + size] = 1_000_000_000
        for x in y..<y + size {
            cache[y][y + size] = min(cache[y][y + size], cache[y][x] + cache[x + 1][y + size] + matrix[y].0 * matrix[y + size].1 * matrix[x].1)
        }
    }
}

print(cache[1][n])
