import Foundation

func solution(_ n:Int) -> [Int] {
    var n = n
    var answer: [Int] = []
    while n != 1 {
        answer.append(n)
        n = n % 2 == 0 ? n / 2 : 3 * n + 1
    }
    return answer + [1]
}
