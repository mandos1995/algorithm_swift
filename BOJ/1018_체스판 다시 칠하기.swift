let startBlack = [
    ["B", "W", "B", "W", "B", "W", "B", "W"],
    ["W", "B", "W", "B", "W", "B", "W", "B"],
    ["B", "W", "B", "W", "B", "W", "B", "W"],
    ["W", "B", "W", "B", "W", "B", "W", "B"],
    ["B", "W", "B", "W", "B", "W", "B", "W"],
    ["W", "B", "W", "B", "W", "B", "W", "B"],
    ["B", "W", "B", "W", "B", "W", "B", "W"],
    ["W", "B", "W", "B", "W", "B", "W", "B"]
]
let startWhite = [
    ["W", "B", "W", "B", "W", "B", "W", "B"],
    ["B", "W", "B", "W", "B", "W", "B", "W"],
    ["W", "B", "W", "B", "W", "B", "W", "B"],
    ["B", "W", "B", "W", "B", "W", "B", "W"],
    ["W", "B", "W", "B", "W", "B", "W", "B"],
    ["B", "W", "B", "W", "B", "W", "B", "W"],
    ["W", "B", "W", "B", "W", "B", "W", "B"],
    ["B", "W", "B", "W", "B", "W", "B", "W"]
]
let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var board: [[String]] = []
for _ in 0..<n {
    board.append(readLine()!.map { String($0) })
}

var result = 64

for i in 0..<n - 7 {
    for j in 0..<m - 7 {
        var startBlackCount = 0
        var startWhiteCount = 0
        
        for k in 0..<8 {
            for l in 0..<8 {
                if board[i + k][j + l] != startBlack[k][l] {
                    startBlackCount += 1
                }
                if board[i + k][j + l] != startWhite[k][l] {
                    startWhiteCount += 1
                }
            }
        }
        result = min(result, startBlackCount, startWhiteCount)
    }
}
print(result)
