import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var startDic: [Int: Int] = [:]
    var endDic: [Int: Int] = [:]
    var failPercentageDic: [Int: Double] = [:]
    for i in 1...N + 1{
        startDic[i] = 0
        endDic[i] = 0
        failPercentageDic[i] = 0.0
    }
    var numCount = [Int](repeating: 0, count: N + 2)
    let sortedStage = stages.sorted(by: <)
    for stage in sortedStage {
        numCount[stage] += 1
    }
    let total = stages.count
    var endCount = 0
    for i in 1...N {
        endDic[i] = total - endCount
        endCount += numCount[i]
        startDic[i] = numCount[i]
    }
    for i in 1...N + 1 {
        if startDic[i]! == 0 && endDic[i]! == 0 {
            failPercentageDic[i] = 0.0
        } else {
            failPercentageDic[i] = Double(startDic[i]!) / Double(endDic[i]!)

        }
    }
    let sortedFailDic = failPercentageDic.sorted {
        $0.value == $1.value ? $0.key < $1.key : $0.value > $1.value
    }
    var answer: [Int] = []
    for (key, _) in sortedFailDic {
        answer.append(key)
    }
    _ = answer.removeLast()
    return answer
}
