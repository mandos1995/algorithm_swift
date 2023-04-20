func solution() {
    let n = Int(readLine()!)!
    let sizes = [0] + readLine()!.split(separator: " ").map { Int($0)! }
    var prefixSum = sizes
    for i in 1...n {
        prefixSum[i] += prefixSum[i - 1]
    }
    var cache = [[Int]](repeating: [Int](repeating: 0, count: n + 1), count: n + 1)

    for size in 1..<n {
        for y in 1...n - size {
            cache[y][y + size] = 1_000_000_000
            for x in y..<y + size {
                cache[y][y + size] = min(cache[y][y + size], cache[y][x] + cache[x + 1][y + size] + (prefixSum[y + size] - prefixSum[y - 1]))
            }
        }
    }
    print(cache[1][n])
}

let t = Int(readLine()!)!
for _ in 0..<t { solution() }
