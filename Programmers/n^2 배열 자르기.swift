import Foundation

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    var answer: [Int] = []
    let left = Int(left)
    let right = Int(right)
    for i in left...right {
        let value = max(i / n, i % n)
        answer.append(value + 1)
    }
    return answer
}
