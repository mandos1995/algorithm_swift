import Foundation

func solution(_ num_list:[Int]) -> Int {
    return num_list.reduce(0, +) * num_list.reduce(0, +) > num_list.reduce(1, *) ? 1 : 0
}
