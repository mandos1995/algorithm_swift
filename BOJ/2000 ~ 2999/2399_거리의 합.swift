let n = Int(readLine()!)!
let x = readLine()!.split(separator: " ").map { Int($0)! }
var answer = 0
for i in 0..<n {
    for j in 0..<n {
        answer += abs(x[i] - x[j])
    }
}
print(answer)
