import Foundation

func solution(_ n:Int) -> Int {
    return n % 2 == 0 ? (1...n).filter { $0 % 2 == 0 }.map { $0 * $0 }.reduce(0, +) : (1...n).filter { $0 % 2 == 1 }.reduce(0, +)
}
