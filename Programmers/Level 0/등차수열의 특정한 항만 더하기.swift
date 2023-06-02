import Foundation

func solution(_ a:Int, _ d:Int, _ included:[Bool]) -> Int {
    return zip((0..<included.count).map { a + $0 * d }, included).filter { $0.1 }.map { $0.0 }.reduce(0, +)
}
