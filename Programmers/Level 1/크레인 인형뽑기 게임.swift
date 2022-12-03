import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var boards = board
    var stack: [Int] = []
    var count = 0
    for move in moves {
        var i = 0
        while i < boards.count {
            if boards[i][move - 1] == 0 {
                i += 1
                continue
            } else {
                stack.append(boards[i][move - 1])
                boards[i][move - 1] = 0
                if stack.count > 1 {
                    if stack[stack.count - 1] == stack[stack.count - 2] {
                        stack.removeLast()
                        stack.removeLast()
                        count += 2
                    }
                }
                break
            }
        }
        
    }
    return count
}
