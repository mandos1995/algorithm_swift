let n = Int(readLine()!)!
var board: [[String]] = []
var result = 0
for _ in 0..<n {
    board.append(readLine()!.map { String($0) })
}

for x in 0..<n {
    for y in 0..<n {
        if y + 1 < n {
            (board[x][y], board[x][y + 1]) = (board[x][y + 1], board[x][y])
            check()
            (board[x][y], board[x][y + 1]) = (board[x][y + 1], board[x][y])
            
            (board[y][x], board[y + 1][x]) = (board[y + 1][x], board[y][x])
            check()
            (board[y][x], board[y + 1][x]) = (board[y + 1][x], board[y][x])
        }
            
    }
}

func check() {
    var count = 1
    for x in 0..<n {
        for y in 1..<n {
            if board[x][y] == board[x][y - 1] {
                count += 1
                result = max(result, count)
            } else {
                count = 1
            }
        }
        count = 1
    }
    
    for y in 0..<n {
        for x in 1..<n {
            if board[x][y] == board[x - 1][y] {
                count += 1
                result = max(result, count)
            } else {
                count = 1
            }
        }
        count = 1
    }
}

print(result)
