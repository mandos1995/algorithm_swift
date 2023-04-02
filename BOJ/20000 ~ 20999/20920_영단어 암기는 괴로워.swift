let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var words: [String: Int] = [:]

for _ in 0..<n {
    let word = readLine()!
    if word.count < m {
        continue
    }
    words[word, default: 0] += 1
}

let sortedWords = words.sorted {
    if $0.value == $1.value {
        if $0.key.count == $1.key.count {
            return $0.key < $1.key
        }
        return $0.key.count > $1.key.count
    }
    return $0.value > $1.value
}
sortedWords.forEach { print($0.key) }
