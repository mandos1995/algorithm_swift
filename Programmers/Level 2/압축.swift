func solution(_ msg:String) -> [Int] {
    let alpha = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    var dict: [String: Int] = [:]
    let msg = msg.map { String($0) }
    for (index, a) in alpha.enumerated() {
        dict[String(a)] = index + 1
    }
    var index = 0
    var str = ""
    var answer: [Int] = []
    while index < msg.count {
        let nextWord = msg[index]
        var newString = str + nextWord
        
        guard let _ = dict[newString] else {
            dict[newString] = dict.count + 1
            answer.append(dict[str]!)
            str = ""
            continue
        }
        str += nextWord
        index += 1
    }
    answer.append(dict[str]!)
    return answer
}
