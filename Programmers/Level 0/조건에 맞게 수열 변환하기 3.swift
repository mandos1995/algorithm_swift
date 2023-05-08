import Foundation

func solution(_ arr:[Int], _ k:Int) -> [Int] {
    return arr.map { k % 2 == 0 ? $0 + k : $0 * k }
}
