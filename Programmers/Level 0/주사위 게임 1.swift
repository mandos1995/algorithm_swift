import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    return a % 2 == 1 && b % 2 == 1 ? a * a + b * b : a % 2 == 1 || b % 2 == 1 ? 2 * (a + b) : abs(a - b)
}
