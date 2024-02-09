let answer: [[Character]] = [
    ["A", "B", "C", "D"],
    ["E", "F", "G", "H"],
    ["I", "J", "K", "L"],
    ["M", "N", "O", "."],
]

var board: [[Character]] = []
for _ in 0..<4 {
    board.append(readLine()!.map { $0 })
}
var result = 0
for y in 0..<4 {
    for x in 0..<4 {
        for dy in 0..<4 {
            if answer[y][x] != ".", let dx = board[dy].firstIndex(of: answer[y][x]) {
                result += getDistance(y, x, dy, dx)
                break
            }
        }
    }
}

func getDistance(_ y1: Int, _ x1: Int, _ y2: Int, _ x2: Int) -> Int {
    return abs(x2 - x1) + abs(y2 - y1)
}

print(result)
