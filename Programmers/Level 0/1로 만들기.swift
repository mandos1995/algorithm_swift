import Foundation

func solution(_ numList:[Int]) -> Int {
    return numList.map { makeOne(n: $0) }.reduce(0, +)
}

func makeOne(n: Int) -> Int {
    var n = n
    var answer = 0
    while n != 1 {
        n = n % 2 == 0 ? n / 2 : (n - 1) / 2
        answer += 1
    }
    return answer
}
