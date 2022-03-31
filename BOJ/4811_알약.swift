while true {
    let n = Int(readLine()!)!
    if n == 0 {
        break
    }
    var cache = [[Int]](repeating: [Int](repeating: 0, count: n + 1), count: n + 1)
    for i in 1...n {
        for j in 0...n {
            if j == 0 {
                cache[i][j] = 1
                continue
            }
            if j > i {
                continue
            }
            cache[i][j] = cache[i][j - 1] + cache[i - 1][j]
        }
    }
    print(cache[n][n])
}
