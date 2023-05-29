import Foundation

func solution(_ names:[String]) -> [String] {
    return stride(from: 0, through: names.count - 1, by: 5).map { names[$0] }
}
