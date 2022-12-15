import Foundation

func solution(_ array:[Int]) -> Int {
    return array.sorted(by: <)[array.count / 2]
}
