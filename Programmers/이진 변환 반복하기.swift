import Foundation

func solution(_ s:String) -> [Int] {
    var string = s
    var answer = [0, 0]
    var removedCount = 0
    var index = 0
    while true {
        if string == "1" {
            break
        }
        let n = string.count
        let oneCount = string.filter { $0 == "1" }.count
        removedCount += n - oneCount
        string = String(oneCount, radix: 2)
        index += 1
    }
    return [index, removedCount]
}
