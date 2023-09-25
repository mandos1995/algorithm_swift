import Foundation

func solution(_ arr:[Int], _ query:[Int]) -> [Int] {
    var arr = arr
    for (i, q) in query.enumerated() {
        if i % 2 == 0 {
            arr.removeSubrange((q + 1)...)
        } else {
            arr.removeSubrange(..<q)
        }
    }
    return arr
}
