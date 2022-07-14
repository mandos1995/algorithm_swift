let n = Int(readLine()!)!
let s = readLine()!.map { $0 }
var bonusScore = 0
var score = 0
for i in 0..<n {
    if s[i] == "O" {
        score += i + 1
        score += bonusScore
        bonusScore += 1
    } else {
        bonusScore = 0
    }
}
print(score)
