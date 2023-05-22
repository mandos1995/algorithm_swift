import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    let n = num_list.count
    if num_list[n - 1] > num_list[n - 2] {
        return num_list + [num_list[n - 1] - num_list[n - 2]]
    } else {
        return num_list + [num_list[n - 1] * 2]
    }
}
