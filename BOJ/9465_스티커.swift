func solution() {
    let n = Int(readLine()!)!
    var sticker: [[Int]] = []
    for _ in 0..<2 {
        sticker.append(readLine()!.split(separator: " ").map { Int($0)! })
    }
    var cache = [[Int]](repeating: [Int](repeating: -1, count: n), count: 2)
    cache[0][0] = sticker[0][0]
    cache[1][0] = sticker[1][0]
    if n > 1 {
        cache[0][1] = cache[1][0] + sticker[0][1]
        cache[1][1] = cache[0][0] + sticker[1][1]
        
        for x in 2..<n {
            for y in 0..<2 {
                cache[y][x] = max(cache[1 - y][x - 1], cache[1 - y][x - 2]) + sticker[y][x]
            }
        }
    }
    print(max(cache[1][n - 1], cache[0][n - 1]))
}


for _ in 0..<Int(readLine()!)! {
    solution()
}
