import Foundation

func solution(_ arr:[[Int]]) -> [[Int]] {
    let row = arr.count
    let column = arr[0].count
    if row > column {
        return arr.map { $0 + [Int](repeating: 0, count: row - column)}
    } else {
        var answer = arr
        for _ in 0..<column - row {
            answer.append([Int](repeating: 0, count: column))
        }
        return answer
    }
}
