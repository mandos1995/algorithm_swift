let cardA = readLine()!.split(separator: " ").map { Int($0)! }
let cardB = readLine()!.split(separator: " ").map { Int($0)! }
var scoreA = 0
var scoreB = 0
var winnerSave: Bool? // true A win, false B win
for i in 0..<10 {
    if cardA[i] > cardB[i] {
        scoreA += 3
        winnerSave = true
    } else if cardB[i] > cardA[i] {
        scoreB += 3
        winnerSave = false
    } else {
        scoreA += 1
        scoreB += 1
    }
}
var winner = ""
if scoreA > scoreB {
    winner = "A"
} else if scoreB > scoreA {
    winner = "B"
} else {
    if let win = winnerSave {
        if win {
            winner = "A"
        } else {
            winner = "B"
        }
    } else {
        winner = "D"
    }
}
print(scoreA, scoreB)
print(winner)
