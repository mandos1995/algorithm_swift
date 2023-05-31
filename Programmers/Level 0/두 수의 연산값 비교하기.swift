import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    return max(Int("\(a)\(b)")!, 2 * a * b)
}
