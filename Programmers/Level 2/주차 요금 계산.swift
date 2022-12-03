import Foundation

func solution(_ fees:[Int], _ records:[String]) -> [Int] {
    let normalTime = fees[0], normalPrice = fees[1], unitTime = fees[2], unitPrice = fees[3]
    var recordDict: [String: [String]] = [:]
    var answer: [Int] = []
    var priceDict: [String: Int] = [:]
    for record in records {
        let r = record.split(separator: " ").map { String($0) }
        let time = r[0]
        let times = r[0].split(separator: ":").map { Int($0)! }, number = r[1], enter = r[2]
        let outTime = times[0] * 60 + times[1]
        if recordDict[number] == nil {
            recordDict[number] = [time, enter]
        } else {
            let times = recordDict[number]![0].split(separator: ":").map { Int($0)! }
            let inTime = times[0] * 60 + times[1]
            if priceDict[number] == nil {
                priceDict[number] = (outTime - inTime)
            } else {
                priceDict[number]! += (outTime - inTime)
            }
            recordDict[number] = nil
        }
    }
    for (key, value) in recordDict {
        let times = value[0].split(separator: ":").map { Int($0)! }
        let time = times[0] * 60 + times[1]
       if priceDict[key] == nil {
            priceDict[key] = 23 * 60 + 59 - time
       } else {
           priceDict[key]! += (23 * 60 + 59 - time)
       }
        
    }

    for (key, value) in priceDict {
        print(normalPrice, value, normalTime, unitTime, unitPrice)
        let timeForPrice = Int(ceil(Double(value - normalTime) / Double(unitTime))) <= 0 ? 0 : Int(ceil(Double(value - normalTime) / Double(unitTime)))
        let price = normalPrice + timeForPrice * unitPrice
        priceDict[key] = price
    }
    
    let sortedPriceDict = priceDict.sorted { $0.key < $1.key }
    for (key, value) in sortedPriceDict {
        answer.append(value)
    }
    return answer
}
