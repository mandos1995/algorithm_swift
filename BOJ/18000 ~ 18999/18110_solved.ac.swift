let n = Int(readLine()!)!
if n == 0 {
    print(0)
    exit(0)
}

var scores: [Int] = []
for _ in 0..<n {
    scores.append(Int(readLine()!)!)
}

let countAvg = Int((Double(n) * 0.15).rounded())

scores.sort()
scores.removeFirst(countAvg)
scores.removeLast(countAvg)

let sum = scores.reduce(0, +)
print(Int((Double(sum) / Double(scores.count)).rounded()))

