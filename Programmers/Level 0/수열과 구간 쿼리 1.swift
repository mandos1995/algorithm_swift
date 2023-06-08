import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var arr = arr
    queries.forEach {
        arr.replaceSubrange($0[0]...$0[1], with: arr[$0[0]...$0[1]].map { $0 + 1 })
    }
    return arr
}
