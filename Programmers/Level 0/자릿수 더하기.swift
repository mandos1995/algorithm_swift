import Foundation

func solution(_ n:Int) -> Int {
    return String(n).map { Int(String($0))! }.reduce(0, +)
}
