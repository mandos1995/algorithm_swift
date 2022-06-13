let name = readLine()!
var dict: [Character: Int] = ["L": 0, "O": 0, "V": 0, "E": 0]
var answerDict: [String: Int] = [:]
for n in name {
    if dict[n] == nil {
        continue
    }
    dict[n]! += 1
}

let n = Int(readLine()!)!

for _ in 0..<n {
    let name = readLine()!
    var newDict = dict
    for n in name {
        if newDict[n] == nil {
            continue
        }
        newDict[n]! += 1
    }
    let percent = (newDict["L"]! + newDict["O"]!) * (newDict["L"]! + newDict["V"]!) * (newDict["L"]! + newDict["E"]!) * (newDict["O"]! + newDict["V"]!) * (newDict["O"]! + newDict["E"]!) * (newDict["V"]! + newDict["E"]!)
    answerDict[name] = percent % 100
}

let answer = answerDict.sorted { $0.value == $1.value ? $0.key < $1.key : $0.value > $1.value }[0]
print(answer.key)
