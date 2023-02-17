var cards: [Int] = []
let n = Int(readLine()!)!
for _ in 0..<n {
    cards.append(Int(readLine()!)!)
}
let cardCount = Dictionary(cards.map { ($0, 1) }, uniquingKeysWith: +)

print(cardCount.sorted { $0.value == $1.value ? $0.key < $1.key : $0.value > $1.value }[0].key)
