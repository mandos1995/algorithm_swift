import Foundation

let dy = [1, 1, 1, 0, -1, -1, -1, 0]
let dx = [-1, 0, 1, 1, 1, 0, -1, -1, -1]

func isValidCoord(_ n: Int, _ y: Int, _ x: Int) -> Bool {
    return 0..<n ~= y && 0..<n ~= x
}

func solution(_ board:[[Int]]) -> Int {
    var isCaution = board.map { $0.map { $0 == 1 }}
    let n = board.count
    for y in 0..<n {
        for x in 0..<n {
            if board[y][x] == 1 {
                for i in 0..<8 {
                    let ny = y + dy[i]
                    let nx = x + dx[i]
                    if isValidCoord(n, ny, nx) {
                        isCaution[ny][nx] = true
                    }
                }
            }
        }
    }
    return isCaution.flatMap { $0 }.filter { !$0 }.count
}
