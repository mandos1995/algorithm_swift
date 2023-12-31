let t = Int(readLine()!)!
for _ in 0..<t { solution() }

func solution() {
    let word = readLine()!
    let password = readLine()!.map { $0 }
    var dict: [Character: Character] = [:]
    for i in 0..<26 {
        dict[Character(UnicodeScalar(i + 65)!)] = password[i]
    }
    print(String(word.map { dict[$0] ?? " "}))
}
