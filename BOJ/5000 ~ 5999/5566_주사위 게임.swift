let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var board: [Int] = []

for _ in 0..<n {
    board.append(Int(readLine()!)!)
}

var x = 0

for i in 1...m {
    let move = Int(readLine()!)!
    let dx = move + x
    if dx >= n - 1 {
        print(i)
        break
    }
    x = dx + board[dx]
    if x >= n - 1 {
        print(i)
        break
    }
}
