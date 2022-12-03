import Foundation

func solution(_ board:[[Int]]) -> Int
{
    var cache = board
    
    for y in 1..<board.count {
        for x in 1..<board[y].count {
            if cache[y][x] == 0 {
                continue
            }
            cache[y][x] = min(cache[y - 1][x - 1], cache[y - 1][x], cache[y][x - 1]) + 1
        }
    }
    let maxValue = cache.flatMap { $0 }.max()!
    return maxValue * maxValue
}
