import Foundation

func solution(_ numbers:[Int]) -> Int {
    return 45 - numbers.reduce(0, +)
}
