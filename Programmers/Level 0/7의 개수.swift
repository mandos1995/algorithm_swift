import Foundation

func solution(_ array:[Int]) -> Int {
    return array.map { String($0) }.joined().map { String($0) }.filter { $0 == "7" }.count
}
