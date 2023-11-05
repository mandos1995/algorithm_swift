let t = Int(readLine()!)!
for _ in 0..<t {
    let word = removeSpace(readLine()!)
    print(getMaxFrequency(word))
}

func getMaxFrequency(_ word: String) -> Character {
    let word = Dictionary(word.map { ($0, 1) }, uniquingKeysWith: +)
    let maxFrequencyValue = word.values.max()!
    let maxFrequencys = word.filter { $0.value == maxFrequencyValue }
    return maxFrequencys.count > 1 ? "?" : maxFrequencys.keys.first!
}

func removeSpace(_ word: String) -> String {
    return word.split(separator: " ").map { String($0) }.joined()
}
