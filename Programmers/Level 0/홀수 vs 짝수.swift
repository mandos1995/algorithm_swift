import Foundation

func solution(_ num_list:[Int]) -> Int {
    return max(num_list.enumerated().filter { $0.offset % 2 == 0 }.map { $0.element }.reduce(0, +),
               num_list.enumerated().filter { $0.offset % 2 == 1 }.map { $0.element }.reduce(0, +))
}
