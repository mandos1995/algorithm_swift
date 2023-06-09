import Foundation

func solution(_ arr:[Int], _ flag:[Bool]) -> [Int] {
    var answer: [Int] = []
    zip(arr, flag).map { ($0, $1) }.forEach { num, flag in
        if flag {
            answer += [Int](repeating: num, count: num * 2)
        } else {
            answer.removeLast(num)
        }
    }
    return answer
}
