let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var x = readLine()!.split(separator: " ").map { Int($0)! }
var board = [[Int]](repeating: [Int](repeating: 0, count: m + 1), count: n + 1)
board[0] = [0] + readLine()!.split(separator: " ").map { Int($0)! }
for i in 1...n {
    board[i][0] = x[i - 1]
}

for y in 1...n {
    for x in 1...m {
        board[y][x] = board[y - 1][x] == board[y][x - 1] ? 0 : 1
    }
}

print(board[n][m])
