import Foundation

func solution(_ n:Int) -> [Int] {
    var n = n
    var answer: [Int] = []
    while n > 1 {
        for i in 2...n {
            if n % i == 0 {
                answer.append(i)
                n /= i
                break
            }
        }
    }
    answer = Array(Set(answer)).sorted(by: <)
    return answer
}
