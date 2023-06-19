import Foundation

func solution(_ arr:[Int]) -> [Int] {
    return arr.firstIndex(of: 2) == nil ? [-1] : Array(arr[arr.firstIndex(of: 2)!...arr.lastIndex(of: 2)!])
}
