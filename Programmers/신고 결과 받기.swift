import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var reportedDict: [String : [String]] = [:]
    var answerDict: [String: Int] = [:]
    var answer: [Int] = []
    for id in id_list {
        reportedDict[id] = []
        answerDict[id] = 0
    }
    for report in report {
        let peoples = report.split(separator: " ").map { String($0) }
        if !reportedDict[peoples[1]]!.contains(peoples[0]) {
            reportedDict[peoples[1]]!.append(peoples[0])
        }
    }
    
    reportedDict = reportedDict.filter { $0.value.count >= k }
    for (_, value) in reportedDict {
        for v in value {
            answerDict[v]! += 1
        }
    }
    
    for id in id_list {
        answer.append(answerDict[id]!)
    }
    
    return answer
}
