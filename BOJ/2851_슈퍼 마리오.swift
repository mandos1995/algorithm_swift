var score: [Int] = []
for _ in 0..<10 {
    score.append(Int(readLine()!)!)
}
var sumScore: [Int] = []
var sum = 0

for i in 0..<10 {
    sum += score[i]
    sumScore.append(sum)
}

let newSum = sumScore.map { $0 - 100 }
var index = 0
var x = Int.max
var recentResult = 0
for i in 0..<newSum.count {
    if x > abs(newSum[i]) {
        x = abs(newSum[i])
        recentResult = newSum[i]
        index = i
    }
    
    if x == abs(newSum[i]) {
        if recentResult < newSum[i] {
            index = i
        }
    }
}
print(sumScore[index])
