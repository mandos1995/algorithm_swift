func solution() {
    _ = readLine()
    var cards: [[String]] = []
    cards.append(readLine()!.split(separator: " ").map { String($0) }.sorted(by: <))
    cards.append(readLine()!.split(separator: " ").map { String($0) }.sorted(by: <))
    print(cards[0] == cards[1] ? "NOT CHEATER" : "CHEATER")
}

let t = Int(readLine()!)!
for _ in 0..<t { solution() }
