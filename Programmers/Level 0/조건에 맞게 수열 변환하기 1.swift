import Foundation

func solution(_ arr:[Int]) -> [Int] {
    return arr.map {
        if $0 >= 50 && $0 % 2 == 0 {
            return $0 / 2
        }
        if $0 < 50 && $0 % 2 == 1 {
            return $0 * 2
        }
        return $0
    }
}
