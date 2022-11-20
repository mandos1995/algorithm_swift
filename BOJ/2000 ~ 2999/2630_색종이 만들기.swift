let n = Int(readLine()!)!
var board: [[Int]] = []
for _ in 0..<n {
    board.append(readLine()!.split(separator: " ").map { Int($0)! })
}
var zeroCount = 0
var oneCount = 0
func splitBoard(x: Int, y: Int, n: Int) {
    var one = 0
    var zero = 0
    for i in y..<y + n {
        for j in x..<x + n {
            if board[i][j] == 1 {
                one += 1
            } else {
                zero += 1
            }
        }
    }
    if one == n * n {
        oneCount += 1
        return
    } else if zero == n * n {
        zeroCount += 1
        return
    } else {
        splitBoard(x: x, y: y, n: n / 2)
        splitBoard(x: x + n / 2, y: y, n: n / 2)
        splitBoard(x: x, y: y + n / 2, n: n / 2)
        splitBoard(x: x + n / 2, y: y + n / 2, n: n / 2)
    }
}
splitBoard(x: 0, y: 0, n: n)
print(zeroCount)
print(oneCount)
