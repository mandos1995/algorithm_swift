import Foundation

func solution(_ arr:[Int]) -> [Int] {
    return arr + [Int](repeating: 0, count: (0...10).map { 1 << $0 }.filter { $0 >= arr.count }.first! - arr.count)
}
