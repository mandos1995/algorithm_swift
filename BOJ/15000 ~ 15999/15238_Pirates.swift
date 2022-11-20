let n = Int(readLine()!)!
let word = readLine()!
var dict: [Character: Int] = [:]
for w in word {
    if dict[w] == nil {
        dict[w] = 1
    } else {
        dict[w]! += 1
    }
}

let answer = dict.sorted { $0.value > $1.value }.first!
print(answer.key, answer.value)
