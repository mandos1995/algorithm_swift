import Foundation

func solution(_ numbers:[Int]) -> Int {
    let numbers = numbers.sorted(by: >)
    return max(numbers[0] * numbers[1], numbers[numbers.count - 2] * numbers.last!)
}
