import Foundation

func solution(_ l:Int, _ r:Int) -> [Int] {
    let answer = (l...r).map { $0 }.filter { Set(String($0).map{ $0 }).isSubset(of: Set(["0", "5"])) }
    return answer.isEmpty ? [-1] : answer
}
