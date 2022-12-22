import Foundation

func solution(_ array:[Int]) -> [Int] {
    return [array.max()!, array.firstIndex(of: array.max()!)!]
}
