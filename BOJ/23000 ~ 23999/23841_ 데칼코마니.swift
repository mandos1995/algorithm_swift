let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var board: [[String]] = []
for _ in 0..<n {
    board.append(readLine()!.map { String($0) })
}

for y in 0..<n {
    for x in 0..<m {
        if board[y][x] != "." {
            board[y][m - 1 - x] = board[y][x]
        }
    }
}

board.forEach { b in
    print(b.joined())
}
