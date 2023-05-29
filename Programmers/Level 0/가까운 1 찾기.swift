import Foundation

func solution(_ arr:[Int], _ idx:Int) -> Int {
    return arr.enumerated().first { $0.element == 1 && $0.offset > idx }.map { $0.offset } ?? -1
}
