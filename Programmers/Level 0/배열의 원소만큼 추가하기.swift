import Foundation

func solution(_ arr:[Int]) -> [Int] {
    return arr.flatMap { [Int](repeating: $0, count: $0) }
}
