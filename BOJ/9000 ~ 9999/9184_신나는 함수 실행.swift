var cache = [[[Int]]](repeating: [[Int]](repeating: [Int](repeating: 1, count: 21), count: 21), count: 21)
for a in 1...20 {
    for b in 1...20 {
        for c in 1...20 {
            if a < b && b < c {
                cache[a][b][c] = cache[a][b][c - 1] + cache[a][b - 1][c - 1] - cache[a][b - 1][c]
                continue
            }
            cache[a][b][c] = cache[a - 1][b][c] + cache[a - 1][b - 1][c] + cache[a - 1][b][c - 1] - cache[a - 1][b - 1][c - 1]
        }
    }
}

while let input = readLine()?.split(separator: " ").map({ Int($0)! }) {
    if input == [-1, -1, -1] {
        break
    }
    let a = input[0], b = input[1], c = input[2]
    if input.filter({ $0 <= 0 }).count > 0 {
        print("w(\(a), \(b), \(c)) = 1")
        continue
    }
    
    if input.filter({ $0 > 20}).count > 0 {
        print("w(\(a), \(b), \(c)) = \(cache[20][20][20])")
        continue
    }
    print("w(\(a), \(b), \(c)) = \(cache[a][b][c])")
    
}
