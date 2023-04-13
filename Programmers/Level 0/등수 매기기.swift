import Foundation

func solution(_ score:[[Int]]) -> [Int] {
    var answer: [Int] = []
    let total = score.map { $0.reduce(0, +) }
    total.forEach { totalScore in
        answer.append(total.filter { $0 > totalScore }.count + 1)
    }
    return answer
}
