let t = Int(readLine()!)!
for _ in 0..<t { solution() }

func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let n = input[0], m = input[1]
    var score = [Int](repeating: 0, count: n)
    for _ in 0..<m {
        let scores = readLine()!.split(separator: " ").map { Int($0)! }
        for i in 0..<n { score[i] += scores[i] }
    }
    print(score.firstIndex(of: score.max()!)! + 1)
}
