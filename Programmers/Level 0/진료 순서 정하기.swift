import Foundation

func solution(_ emergency:[Int]) -> [Int] {
    return emergency.map { emergency.sorted(by: >).firstIndex(of: $0)! + 1 }
}
