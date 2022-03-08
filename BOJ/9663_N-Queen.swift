let n = Int(readLine()!)!
var count = 0
var board = [Int](repeating: 0, count: n)
var visited = [Bool](repeating: false, count: n)
func isPromising(x: Int) -> Bool {
    for i in 0..<x {
        if board[x] == board[i] {
            return false
        }
        if abs(board[x] - board[i]) == abs(x - i) {
            return false
        }
    }
    
    return true
}

func nQueen(x: Int) {
    if x == n {
        count += 1
        return
    } else {
        for i in 0..<n {
            if visited[i] {
                continue
            }
            board[x] = i
            if isPromising(x: x) {
                visited[i] = true
                nQueen(x: x + 1)
                visited[i] = false
            }
        }
    }
    
}

nQueen(x: 0)
print(count)
