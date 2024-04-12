let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var board: [[Character]] = []
for _ in 0..<n {
    board.append(readLine()!.map { $0 })
}

var reversedBoard: [[Character]] = []
_ = readLine()
for _ in 0..<n {
    reversedBoard.append(readLine()!.map { $0 })
}

var answer = 0

for y in 0..<n {
    for x in 0..<m {
        if board[y][x] == reversedBoard[y][x] {
            answer += 1
        }
    }
}

print(answer)
