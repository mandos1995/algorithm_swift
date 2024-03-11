let n = Int(readLine()!)!
let m = Int(readLine()!)!
let a = readLine()!.split(separator: " ").map { Int($0)! }
var score = [Int](repeating: 0, count: n)
for i in 0..<m {
    let b = readLine()!.split(separator: " ").map { Int($0)! }
    
    for j in 0..<n {
        if b[j] == a[i] {
            score[j] += 1
        } else {
            score[a[i] - 1] += 1
        }
    }
}

print(score.map { String($0) }.joined(separator: "\n"))
