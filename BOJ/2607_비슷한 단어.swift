let n = Int(readLine()!)!
let word = readLine()!.map { String($0) }
var dic: [String: Int] = [:]

for str in ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"] {
    dic[str] = 0
}
var wordDic = dic
for w in word {
    wordDic[w]! += 1
}

var answer = 0
for _ in 0..<n - 1 {
    let input = readLine()!
    var inputDic = dic
    var diff = 0
    for s in input {
        inputDic[String(s)]! += 1
    }
    for str in ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"] {
        diff += abs(wordDic[str]! - inputDic[str]!)
    }
    if abs(word.count - input.count) > 1 || diff > 2 {
        continue
    }
    answer += 1
}
print(answer)
