let n = Int(readLine()!)!

for i in 1...n {
    var scores = readLine()!.split(separator: " ").map { Int($0)! }
    let t = scores.remove(at: 0)
    scores.sort()
    var largestGap = 0
    for i in 0..<t - 1 {
        if abs(scores[i] - scores[i + 1]) > largestGap {
            largestGap = abs(scores[i] - scores[i + 1])
        }
    }
    print("Class \(i)")
    print("Max \(scores.max()!), Min \(scores.min()!), Largest gap \(largestGap)")
}
