import Foundation

func solution(_ arr:[Int], _ delete_list:[Int]) -> [Int] {
    return arr.filter { !delete_list.contains($0) }
}
