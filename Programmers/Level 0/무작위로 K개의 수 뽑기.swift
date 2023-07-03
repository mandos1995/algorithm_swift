import Foundation

func solution(_ arr:[Int], _ k:Int) -> [Int] {
    var set: Set<Int> = []
    var answer: [Int] = []
    for a in arr where answer.count < k {
        if set.contains(a) {
            continue
        }
        set.insert(a)
        answer.append(a)
    }
    return answer.count == k ? answer : answer + [Int](repeating: -1, count: k - answer.count)
}
