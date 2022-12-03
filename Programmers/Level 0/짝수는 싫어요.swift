import Foundation

func solution(_ n:Int) -> [Int] {
    return [Int](1...n).filter { $0 % 2 == 1}
}
