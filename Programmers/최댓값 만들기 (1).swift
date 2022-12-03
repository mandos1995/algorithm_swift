import Foundation

func solution(_ numbers:[Int]) -> Int {
    let numbers = numbers.sorted(by: >)
    return numbers[0] * numbers[1]
}
