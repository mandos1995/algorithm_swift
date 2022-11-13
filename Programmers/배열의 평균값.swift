import Foundation

func solution(_ numbers:[Int]) -> Double {
    return numbers.map { Double($0) }.reduce(0, +) / Double(numbers.count)
}
