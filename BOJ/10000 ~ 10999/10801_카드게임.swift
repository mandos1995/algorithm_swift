let cardA = readLine()!.split(separator: " ").map { Int($0)! }
let cardB = readLine()!.split(separator: " ").map { Int($0)! }

func cardGame(_ cardA: [Int], _ cardB: [Int]) -> String {
    var win = 0
    for i in 0..<10 {
        if cardA[i] > cardB[i] {
            win += 1
            continue
        }
        
        if cardB[i] > cardA[i] {
            win -= 1
            continue
        }
    }
    if win == 0 {
        return "D"
    } else {
        return win > 0 ? "A" : "B"
    }
}
print(cardGame(cardA, cardB))
