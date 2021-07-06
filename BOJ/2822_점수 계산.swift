var score: [Int] = []
for _ in 0..<8 {
    score.append(Int(readLine()!)!)
}
var empty = score
for _ in 0..<3 {
    empty.remove(at: empty.firstIndex(of: empty.min()!)!)
}
var sum = empty.reduce(0, +)

print(sum)
var index: [Int] = []
for i in 0..<5 {
    index.append(score.firstIndex(of: empty[i])! + 1)
}

index.sort()
for i in 0..<5 {
    print(index[i], terminator: " ")
}
