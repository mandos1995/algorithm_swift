let n = Int(readLine()!)!
var board = [[Int]](repeating: [Int](repeating: 0, count: 1001), count: 1001)

for i in 1...n {
    let coord = readLine()!.split(separator: " ").map { Int($0)! }
    let x1 = coord[0], y1 = coord[1], x2 = coord[2], y2 = coord[3]
    for y in y1..<y1 + y2 {
        for x in x1..<x1 + x2 {
            board[y][x] = i
        }
    }
}
var answer = [Int](repeating: 0, count: n + 1)
for y in 0..<1001 {
    for x in 0..<1001 {
        answer[board[y][x]] += 1
    }
}

for i in 1...n {
    print(answer[i])
}
