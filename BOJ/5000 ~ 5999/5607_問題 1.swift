let n = Int(readLine()!)!
var scores = [0, 0]
for _ in 0..<n {
    let cards = readLine()!.split(separator: " ").map { Int($0)! }
    if cards[0] > cards[1] {
        scores[0] += cards[0]
        scores[0] += cards[1]
    } else if cards[0] < cards[1] {
        scores[1] += cards[0]
        scores[1] += cards[1]
    } else {
        scores[0] += cards[0]
        scores[1] += cards[1]
    }
}
print(scores[0], scores[1])
