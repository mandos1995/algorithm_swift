import Foundation

func solution(_ s:String) -> [Int] {
    let s = s.map { $0 }
    var answer: [Int] = []
    for i in 0..<s.count {
        let index = s[0..<i].lastIndex(of: s[i])
        answer.append(index == nil ? -1 : i - index!)
    }
    return answer
}
