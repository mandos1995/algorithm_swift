import Foundation

func solution(_ num:Int, _ k:Int) -> Int {
    return "a\(num)".map { $0 }.firstIndex(of: Character("\(k)")) ?? -1
}
