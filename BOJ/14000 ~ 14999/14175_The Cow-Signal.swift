let input = readLine()!.split(separator: " ").map { Int($0)! }
let m = input[0], n = input[1], k = input[2]
var board: [[String]] = []
for _ in 0..<m {
    board.append(readLine()!.map { String($0) })
}

for i in 0..<m {
    for _ in 0..<k {
        print(board[i].map { String(repeating: $0, count: k) }.joined())
    }
}
