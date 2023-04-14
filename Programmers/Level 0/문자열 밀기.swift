import Foundation

func solution(_ A:String, _ B:String) -> Int {
    var answer = 0
    var str = A.map { $0 }
    while str != B.map { $0 } {
        answer += 1
        str.insert(str.removeLast(), at: 0)
        if answer > str.count {
            answer = -1
            break
        }
    }
    return answer
}
