let n = Int(readLine()!)!
let myRSP = readLine()!.map { String($0) }
var friendsRSP: [[String]] = []
let friendCount = Int(readLine()!)!
var RSP = ["R", "S", "P"]
for _ in 0..<friendCount {
    friendsRSP.append(readLine()!.map { String($0) })
}
var maxScore = 0
var score = 0
for i in 0..<friendCount {
    for j in 0..<myRSP.count {
        switch myRSP[j] {
        case "R":
            if friendsRSP[i][j] == "R" {
                score += 1
            } else if friendsRSP[i][j] == "S" {
                score += 2
            }
        case "S":
            if friendsRSP[i][j] == "S" {
                score += 1
            } else if friendsRSP[i][j] == "P" {
                score += 2
            }
        case "P":
            if friendsRSP[i][j] == "P" {
                score += 1
            } else if friendsRSP[i][j] == "R" {
                score += 2
            }
        default:
            continue
        }
    }
}
print(score)
for i in 0..<n {
    var value = 0
    for r in RSP {
        score = 0
        for j in 0..<friendCount {
            switch r {
            case "R":
                if friendsRSP[j][i] == "R" {
                    score += 1
                } else if friendsRSP[j][i] == "S" {
                    score += 2
                }
            case "S":
                if friendsRSP[j][i] == "S" {
                    score += 1
                } else if friendsRSP[j][i] == "P" {
                    score += 2
                }
            case "P":
                if friendsRSP[j][i] == "P" {
                    score += 1
                } else if friendsRSP[j][i] == "R" {
                    score += 2
                }
            default:
                continue
            }
            
        }
        value = max(value, score)
    }
    maxScore += value
}
print(maxScore)
