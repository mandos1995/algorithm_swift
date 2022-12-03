import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var answer = Set<Int>()
    
    for i in 0...numbers.count - 2 {
        for j in i + 1...numbers.count - 1 {
            answer.insert(numbers[i] + numbers[j])
        }
    }
    return Array(answer).sorted(by: <)
}
