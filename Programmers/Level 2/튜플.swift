import Foundation

func solution(_ s:String) -> [Int] {
    var s = s
    var countDict: [Int: Int] = [:]
    var answer: [Int] = []
    s.removeFirst(2)
    s.removeLast(2)
    s.components(separatedBy: "},{").map { $0.split(separator: ",").map { Int($0)! } }.forEach {
        $0.forEach {
            if countDict[$0] == nil {
                countDict[$0] = 1
            } else {
                countDict[$0]! += 1
            }
        }
    }
    let sortedCountDict = countDict.sorted { $0.value > $1.value }
    for (key, value) in sortedCountDict {
        answer.append(key)
    }
    return answer
}
