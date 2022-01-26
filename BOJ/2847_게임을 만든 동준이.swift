let n = Int(readLine()!)!
var score: [Int] = []
for _ in 0..<n {
    score.append(Int(readLine()!)!)
}
let lastScore = score[n - 1]
var minus = 0
for i in (0..<n - 1).reversed() {
    if score[i] >= score[i + 1] {
        minus += (score[i] - score[i + 1] + 1)
        score[i] = score[i] - (score[i] - score[i + 1] + 1)
    }
}
print(minus)
