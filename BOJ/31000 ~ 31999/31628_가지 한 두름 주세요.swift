var board: [[String]] = []
for _ in 0..<10 { board.append(readLine()!.split(separator: " ").map { String($0) }) }
var answer = false
for i in 0..<10 {
    if Set(board[i][0..<10]).count == 1 {
        answer = true
    }
}

for i in 0..<10 {
    var str = ""
    for j in 0..<10 {
        str += "\(board[j][i]) "
    }
    if Set(str.split(separator: " ").map { String($0) }).count == 1 {
        answer = true
    }
}

print(answer ? 1 : 0)
