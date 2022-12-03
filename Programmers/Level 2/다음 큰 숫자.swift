import Foundation

func solution(_ n:Int) -> Int {
    var binaryN = String(n, radix: 2)
    let oneCount = binaryN.filter { $0 == "1" }.count
    var i = 1
    var answer = 0
    while true {
        let nextNumber = String(n + i, radix: 2)
        if oneCount == nextNumber.filter { $0 == "1" }.count {
            answer = Int(nextNumber, radix: 2)!
            break
        }
        i += 1
    }
    return answer
}
