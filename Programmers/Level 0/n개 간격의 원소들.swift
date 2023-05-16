import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [Int] {
    return num_list.enumerated().filter { $0.offset % n == 0 }.map { $0.element }
}
