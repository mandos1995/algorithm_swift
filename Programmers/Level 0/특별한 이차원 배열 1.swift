import Foundation

func solution(_ n:Int) -> [[Int]] {
    var answer = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
    for i in 0..<n {
        answer[i][i] = 1
    }
    return answer
}
