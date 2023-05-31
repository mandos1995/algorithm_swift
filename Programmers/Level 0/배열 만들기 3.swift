import Foundation

func solution(_ arr:[Int], _ intervals:[[Int]]) -> [Int] {
    return intervals.flatMap { arr[$0[0]...$0[1]] }
}
