let n = Int(readLine()!)!
var answer = 0
for _ in 0..<n {
    let score = readLine()!.split(separator: " ").map { Int($0)! }
    let sorted = score[2...].map { $0 }.sorted(by: >)
    answer = max(max(score[0], score[1]) + sorted[0] + sorted[1] , answer)
}
print(answer)
