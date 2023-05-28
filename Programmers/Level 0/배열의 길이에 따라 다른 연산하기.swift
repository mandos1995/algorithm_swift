import Foundation

func solution(_ arr:[Int], _ n:Int) -> [Int] {
    if arr.count % 2 == 0 {
        return arr.enumerated().map { $0.offset % 2 == 1 ? $0.element + n : $0.element }
    } else {
        return arr.enumerated().map { $0.offset % 2 == 0 ? $0.element + n : $0.element }
    }
}
