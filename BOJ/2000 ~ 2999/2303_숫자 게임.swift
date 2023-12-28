let n = Int(readLine()!)!
var maxScore = 0
var answer = 0
for i in 0..<n {
    let scores = readLine()!.split(separator: " ").map { Int($0)! }
    let score = findMaxScore(scores: scores)
    if maxScore <= score {
        answer = i + 1
        maxScore = score
    }
}
print(answer)

func findMaxScore(scores: [Int]) -> Int {
    var answer = 0
    for i in 0..<5 {
        for j in i + 1..<5 {
            for k in j + 1..<5 {
                answer = max((scores[i] + scores[j] + scores[k]) % 10, answer)
            }
        }
    }
    return answer
}
