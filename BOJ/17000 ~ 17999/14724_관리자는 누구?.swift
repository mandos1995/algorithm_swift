let names = ["PROBRAIN", "GROW", "ARGOS", "ADMIN", "ANT", "MOTION", "SPG", "COMON", "ALMIGHTY"]
var maxScore = 0
var answer = "PROBRAIN"
_ = readLine();
for i in 0..<9 {
    let highScore = readLine()!.split(separator: " ").map { Int($0)! }.max()!
    if maxScore < highScore {
        maxScore = highScore
        answer = names[i]
    }
}

print(answer)
